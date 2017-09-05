package com.heyzap.sdk.extensions.inmobi;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

public class InMobiLib
  implements FREExtension
{
  public FREContext createContext(String args)
  {
    return new InMobiLibContext();
  }

  public void dispose() {}

  public void initialize() {}
}
