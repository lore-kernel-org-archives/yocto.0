Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 593FBE00843; Mon, 12 Mar 2018 04:34:58 -0700 (PDT)
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
	*      [212.227.17.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00DC5E00843
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 04:34:56 -0700 (PDT)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs80.server.lan (via HTTP); Mon, 12 Mar 2018 12:34:50 +0100
MIME-Version: 1.0
Message-ID: <trinity-c8e21961-54f9-4f14-993f-efbbd693c39e-1520854490908@3c-app-gmx-bs80>
From: "Arno Steffens" <star@gmx.li>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 12 Mar 2018 12:34:50 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAJTo0Lbi8XVFboq-9j9+sKf5_MTh0-15Q=ezgnmRQCHrH+khwA@mail.gmail.com>
References: <trinity-53cb1c50-6d60-491f-b325-6f30fd900d49-1520839936007@3c-app-gmx-bs80>
	<CAJTo0LaVH0xrRhEeKfb17pNzmFNnXjRxUnnPW=x7PAqBvhPd+Q@mail.gmail.com>
	<trinity-0bbdd579-574b-43bc-89e6-fd45fef799a3-1520850748905@3c-app-gmx-bs80>
	<CAJTo0Lbi8XVFboq-9j9+sKf5_MTh0-15Q=ezgnmRQCHrH+khwA@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:Jk8TCcf+/7cN9EJMCA0yuATdIc25dl3MuT4StCTk/2y
	qIALrBfKWmqNA020/F3seasdqy4CWpjP0+RCfxj1Igf/tjZ3kf
	VxUhw6ZBX6madI6wNSQGK5eSdYC5FA3T6Qlb6QVa63xuV6LpnQ
	F8stOTkVxPiwoxBH5uS9j0biadoL2I+mIXMTA0yvaD4it3kQEv
	YGUtgHERPloNuhJKqT/lPKt8WRYHjoqeiP3cGhKEBgC0e4R+cg
	Z554qDtSRK2NezAeF6XVQ3yTerYumYf72jW/QhxI83MqWwtgrv 80F5s0=
X-UI-Out-Filterresults: notjunk:1;V01:K0:UAlwCYOFyGk=:wQduFRUGLrWjtF1zkpN44t
	U68Zwg7LQyzWq0ahsQcNOG4hGPATVXVQs+mHH3qETcEznoQbfOynKktcqH0BF0KkwhYXsCDJX
	Oj49yXM4nhEIxvhJ2vMe1Rl407UY3p/AQH1jrl2jN7wW1g7P9wKttt90eUIh24EMwBcRDRRo7
	zdCDK/efWERcUZ0fOGSzhd8As5JZIZ+WTYyYlj3yBM7eyvuAh7PUut/kmV8d4Jz7vt1XdqE0q
	1GfduCq9BwhKMZ78v7B1BL4xGt7Osu4cinjQrZwIASiFUoE0jxtnBZuUWADRjDNlimMGMJYjG
	Vti6E2T42gkNnLQAR5G1vNoBLYnx84uM3cyoXGgQraFnrNR3ZriHfbX6P76Mgtj4lKLGZf6J+
	Rmjr8c/0BXxmacQl1VglR6HA32C6Xyb7HqLu+wP5aryGA8u/j0Mc4HR2D2Am90v+GNAw4mZ3H
	t88oZa6ei2kkMy6A3aZbT8RLOvIFF5wf4mV0zztWHLWBEPeexDiu
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
X-List-Received-Date: Mon, 12 Mar 2018 11:34:58 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>
<div>
<div>You are right,&nbsp; the bits/fcntl-32.h at the very end has a</div>

<div>#include &lt;bits/fcntl-linux.h&gt;</div>
</div>

<div>But, all lines in &lt;bits/fcntl.h&gt; are greyed (not active), except these I noted as bold (below). So it not become active.</div>

<div>I would assume __arm__ should be set by someone.<br/>
&nbsp;</div>

<div>It seems it is not a problem for the compiler, but for the Eclipse viewer to show the code.</div>

<div>
<div>That is the problem here.&nbsp; I try to set ARCH=arm at various places in eclipse. but id doesn&#39;t have an effect.</div>

<div>Mhh.</div>
</div>

<div>&nbsp;
<div name="quote" style="margin:10px 5px 5px 10px; padding: 10px 0 10px 10px; border-left:2px solid #C3D9E5; word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;">
<div style="margin:0 0 10px 0;"><b>Gesendet:</b>&nbsp;Montag, 12. M&auml;rz 2018 um 11:39 Uhr<br/>
<b>Von:</b>&nbsp;&quot;Burton, Ross&quot; &lt;ross.burton@intel.com&gt;<br/>
<b>An:</b>&nbsp;&quot;Arno Steffens&quot; &lt;star@gmx.li&gt;<br/>
<b>Cc:</b>&nbsp;Yocto-mailing-list &lt;yocto@yoctoproject.org&gt;<br/>
<b>Betreff:</b>&nbsp;Re: Re: [yocto] O_RDONLY ... missed bits/fcntl.h not as expected</div>

<div name="quoted-content">
<div>Have you looked at the content of bits/fcntl-32.h?</div>

<div class="gmail_extra">&nbsp;
<div class="gmail_quote">On 12 March 2018 at 10:32, Arno Steffens <span>&lt;<a href="mailto:star@gmx.li" onclick="parent.window.location.href=&#39;star@gmx.li&#39;; return false;" target="_blank">star@gmx.li</a>&gt;</span> wrote:

<blockquote class="gmail_quote" style="margin: 0 0 0 0.8ex;border-left: 1.0px rgb(204,204,204) solid;padding-left: 1.0ex;">
<div>
<div style="font-family: Verdana;font-size: 12.0px;">
<div>&nbsp;
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

<div style="margin: 10.0px 5.0px 5.0px 10.0px;padding: 10.0px 0 10.0px 10.0px;border-left: 2.0px solid rgb(195,217,229);">
<div style="margin: 0 0 10.0px 0;"><b>Gesendet:</b>&nbsp;Montag, 12. M&auml;rz 2018 um 11:00 Uhr<br/>
<b>Von:</b>&nbsp;&quot;Burton, Ross&quot; &lt;<a href="mailto:ross.burton@intel.com" onclick="parent.window.location.href=&#39;ross.burton@intel.com&#39;; return false;" target="_blank">ross.burton@intel.com</a>&gt;<br/>
<b>An:</b>&nbsp;&quot;Arno Steffens&quot; &lt;<a href="mailto:star@gmx.li" onclick="parent.window.location.href=&#39;star@gmx.li&#39;; return false;" target="_blank">star@gmx.li</a>&gt;<br/>
<b>Cc:</b>&nbsp;Yocto-mailing-list &lt;<a href="mailto:yocto@yoctoproject.org" onclick="parent.window.location.href=&#39;yocto@yoctoproject.org&#39;; return false;" target="_blank">yocto@yoctoproject.org</a>&gt;<br/>
<b>Betreff:</b>&nbsp;Re: [yocto] O_RDONLY ... missed bits/fcntl.h not as expected</div>

<div>
<div class="h5">
<div>
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
<span class="m_8642611372597653578HOEnZb"><font color="#888888">Arno<br/>
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
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</div></div></body></html>

