package com.heyzap.sdk.extensions.inmobi;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import java.util.HashMap;
import java.util.Map;

public class InMobiLibContext extends FREContext
{
  public void dispose()
  {
  }

  public Map<String, FREFunction> getFunctions()
  {
    Map functions = new HashMap();
    return functions;
  }
}
