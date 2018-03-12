Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24F66E00B1A; Mon, 12 Mar 2018 03:32:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3417E0081A
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 03:32:33 -0700 (PDT)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs80.server.lan (via HTTP); Mon, 12 Mar 2018 11:32:28 +0100
MIME-Version: 1.0
Message-ID: <trinity-0bbdd579-574b-43bc-89e6-fd45fef799a3-1520850748905@3c-app-gmx-bs80>
From: "Arno Steffens" <star@gmx.li>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 12 Mar 2018 11:32:28 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAJTo0LaVH0xrRhEeKfb17pNzmFNnXjRxUnnPW=x7PAqBvhPd+Q@mail.gmail.com>
References: <trinity-53cb1c50-6d60-491f-b325-6f30fd900d49-1520839936007@3c-app-gmx-bs80>
	<CAJTo0LaVH0xrRhEeKfb17pNzmFNnXjRxUnnPW=x7PAqBvhPd+Q@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:IA7b8ek5UXGg8TZLF96/TjKaQDn3mPXCWVU6bol6PAI
	yXg9OTGpIeQUwPOL/w9ockVIRVQFsBYZjB+047DZ5RkVqF/1Wq
	kV0bHJ2C0gLucRxj+ku/jnlXh8RasA3XvXoz6+pShVeM2yddWS
	Fl169Umyss9zyLm4HAaPxEiiGUR8yOC0EHPzkBU7SNnXRO9cq5
	wV3Wtq4SRjHeITfo9GdR47/WLCNHDoLmARsaTlZWTp6KAnS8PW
	Fp8MLM+A1I5EbHz9zAnpup+v2wTNUYkxNStINKYIou4/55MWgf 6WMpDw=
X-UI-Out-Filterresults: notjunk:1;V01:K0:Gx+VV7+FMy4=:BkFirQ5twEHXra+9WSF+Ea
	cTC5xuZoJIWU7SSwriH3YwYTDSbuwMNn604w3MXQhW+boSh4CRtaCZYOHfAsdRyG1TQTvaFwh
	zEvDa9HCv8Aajr+fgWJqsdVGs7nkY1FJjnY+LE7C2DJ6Pg1KiIH4kBvb+vQeatdHqIYJE/4OG
	Holatymt4/NXpkBmVA86JRpci3BoDqqkCuHlqOtb9rQBtDrFs9vg4C9opXIRFV2w1ZOG2QNr7
	Go/iyJRZXa88P08mDKbne6RMEoMUXjlyW3qt9trNGDZja3Z+uIXRXUx0dpovjSvtjgnscZnm1
	9r0zYCmhfrO/cE5TypE9ihtYibAts4etriht1ovi/V77va28a7oeHsnP2ITRx2RkgGLa7JwfY
	6vrsvmw+iIcK4iuS0A1wFLYlZwiKfbbZJh+yyA4aLkK4Hc000tThnlfYYNommYwqirHHLS0VP
	y/49rKqZNd4/gOBMc9X3+It0W35d856zvK/HdrZB+pgyv9KebZ9k
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: O_RDONLY ... missed bits/fcntl.h not as expected
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 12 Mar 2018 10:32:35 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>&nbsp;
<div>
<div>Sure, sorry if this wasn&#39;t clear.</div>

<div>For me the chain is</div>

<div>&lt;fcntl.h&gt; includes &lt;bits/fcntl.h&gt;&nbsp; (see below) and this doesn&#39;t include &lt;bits/fcntl-linux.h&gt;.</div>

<div>This is my SDK sysroot for cortexa9-hf.</div>

<div>&nbsp;</div>

<div>Arno</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>
<div>/*<br/>
&nbsp;* Copyright (C) 2005-2011 by Wind River Systems, Inc.<br/>
&nbsp;*<br/>
&nbsp;* Permission is hereby granted, free of charge, to any person obtaining a copy<br/>
&nbsp;* of this software and associated documentation files (the &quot;Software&quot;), to deal<br/>
&nbsp;* in the Software without restriction, including without limitation the rights<br/>
&nbsp;* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell<br/>
&nbsp;* copies of the Software, and to permit persons to whom the Software is<br/>
&nbsp;* furnished to do so, subject to the following conditions:<br/>
&nbsp;*<br/>
&nbsp;* The above copyright notice and this permission notice shall be included in<br/>
&nbsp;* all copies or substantial portions of the Software.<br/>
&nbsp;*<br/>
&nbsp;* THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR<br/>
&nbsp;* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,<br/>
&nbsp;* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE<br/>
&nbsp;* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER<br/>
&nbsp;* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,<br/>
&nbsp;* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN<br/>
&nbsp;* THE SOFTWARE.<br/>
&nbsp;*<br/>
&nbsp;*/</div>

<div><br/>
#if defined (__arm__)<br/>
#define __MHWORDSIZE&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;32<br/>
#elif defined (__aarch64__) &amp;&amp; defined ( __LP64__)<br/>
#define __MHWORDSIZE&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;64<br/>
#elif defined (__aarch64__)<br/>
#define __MHWORDSIZE&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;32<br/>
#else<br/>
#include &lt;bits/wordsize.h&gt;<br/>
#if defined (__WORDSIZE)<br/>
#define __MHWORDSIZE&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;__WORDSIZE<br/>
#else<br/>
#error &quot;__WORDSIZE is not defined&quot;<br/>
#endif<br/>
#endif</div>

<div>#if __MHWORDSIZE == 32</div>

<div>#ifdef _MIPS_SIM</div>

<div>#if _MIPS_SIM == _ABIO32<br/>
#include &lt;bits/fcntl-32.h&gt;<br/>
#elif _MIPS_SIM == _ABIN32<br/>
#include &lt;bits/fcntl-n32.h&gt;<br/>
#else<br/>
#error &quot;Unknown _MIPS_SIM&quot;<br/>
#endif</div>

<div>#else /* _MIPS_SIM is not defined */<br/>
#include &lt;bits/fcntl-32.h&gt;<br/>
#endif</div>

<div>#elif __MHWORDSIZE == 64<br/>
#include &lt;bits/fcntl-64.h&gt;<br/>
#else<br/>
#error &quot;Unknown __WORDSIZE detected&quot;<br/>
#endif /* matches #if __WORDSIZE == 32 */<br/>
&nbsp;</div>

<div>&nbsp;</div>
</div>
&nbsp;

<div name="quote" style="margin:10px 5px 5px 10px; padding: 10px 0 10px 10px; border-left:2px solid #C3D9E5; word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;">
<div style="margin:0 0 10px 0;"><b>Gesendet:</b>&nbsp;Montag, 12. M&auml;rz 2018 um 11:00 Uhr<br/>
<b>Von:</b>&nbsp;&quot;Burton, Ross&quot; &lt;ross.burton@intel.com&gt;<br/>
<b>An:</b>&nbsp;&quot;Arno Steffens&quot; &lt;star@gmx.li&gt;<br/>
<b>Cc:</b>&nbsp;Yocto-mailing-list &lt;yocto@yoctoproject.org&gt;<br/>
<b>Betreff:</b>&nbsp;Re: [yocto] O_RDONLY ... missed bits/fcntl.h not as expected</div>

<div name="quoted-content">
<div>Can you explain what the actual problem is?
<div>&nbsp;</div>

<div>For me the include you&#39;d use in programs &lt;fcntl.h&gt; includes &lt;bits/fcntl.h&gt; which includes &lt;bits/fcntl-linux.h&gt; which defines O_RDONLY.</div>

<div>&nbsp;</div>

<div>Ross</div>

<div>&nbsp;</div>
</div>

<div class="gmail_extra">&nbsp;
<div class="gmail_quote">On 12 March 2018 at 07:32, Arno Steffens <span>&lt;<a href="mailto:star@gmx.li" onclick="parent.window.location.href=&#39;star@gmx.li&#39;; return false;" target="_blank">star@gmx.li</a>&gt;</span> wrote:

<blockquote class="gmail_quote" style="margin: 0 0 0 0.8ex;border-left: 1.0px rgb(204,204,204) solid;padding-left: 1.0ex;">I looked for<br/>
#define O_RDONLY&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;00<br/>
#define O_WRONLY&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;01<br/>
#define O_RDWR&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;02<br/>
and found it in : bits/fcntl-linux.h. According to this file it should not be included, but bits/fcntl.h.<br/>
And it requires something like that:<br/>
<br/>
&nbsp; A minimal &lt;bits/fcntl.h&gt; contains just:<br/>
&nbsp; &nbsp;struct flock {...}<br/>
&nbsp; &nbsp;#ifdef __USE_LARGEFILE64<br/>
&nbsp; &nbsp;struct flock64 {...}<br/>
&nbsp; &nbsp;#endif<br/>
&nbsp; &nbsp;#include &lt;bits/fcntl-linux.h&gt;<br/>
<br/>
<br/>
<br/>
But this doesn&#39;t finally include the fcntl-linux.h as expected. Am I doing something wrong?<br/>
Regards<br/>
<span class="HOEnZb"><font color="#888888">Arno<br/>
<br/>
<br/>
<br/>
--<br/>
_______________________________________________<br/>
yocto mailing list<br/>
<a href="mailto:yocto@yoctoproject.org" onclick="parent.window.location.href=&#39;yocto@yoctoproject.org&#39;; return false;" target="_blank">yocto@yoctoproject.org</a><br/>
<a href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a></font></span></blockquote>
</div>
</div>
</div>
</div>
</div>
</div></div></body></html>

