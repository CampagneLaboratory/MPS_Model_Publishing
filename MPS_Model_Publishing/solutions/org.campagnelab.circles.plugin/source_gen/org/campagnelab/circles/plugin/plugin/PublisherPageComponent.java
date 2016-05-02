package org.campagnelab.circles.plugin.plugin;

/*Generated by MPS */

import com.intellij.ui.components.JBPanel;
import javax.swing.JComponent;
import javax.swing.JTextField;
import java.awt.GridBagLayout;
import javax.swing.JLabel;
import jetbrains.mps.ide.common.LayoutUtil;
import java.awt.Font;

public class PublisherPageComponent extends JBPanel {
  public static JComponent create() {
    return new PublisherPageComponent();
  }
  private JTextField url;

  public PublisherPageComponent() {
    super(new GridBagLayout());

    JLabel dest = new JLabel("Publishing URL:");
    int i = 0;
    this.add(dest, LayoutUtil.createLabelConstraints(++i));
    this.url = new JTextField();
    this.add(this.url, LayoutUtil.createFieldConstraints(++i));
    JLabel help = new JLabel("URL syntax: 'publish://<user>:<password>@<hostname>:<port>'");
    Font labelFont = new Font(help.getFont().getFontName(), Font.ITALIC, help.getFont().getSize());
    help.setFont(labelFont);
    this.add(help, LayoutUtil.createLabelConstraints(++i));

  }
  public String getURL() {
    return url.getText();
  }
  public void setURL(String url) {
    this.url.setText(url);
  }

}
