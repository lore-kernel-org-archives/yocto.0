Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9B41E00C84; Thu, 30 Nov 2017 08:42:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.117.214.141 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from valiant.selinc.com (valiant.selinc.com [74.117.214.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE85DE00AF2
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 08:42:36 -0800 (PST)
Received: from pps.filterd (valiant.selinc.com [127.0.0.1])
	by valiant.selinc.com (8.16.0.21/8.16.0.21) with SMTP id vAUGfLFv030450
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 08:42:35 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=selinc.com;
	h=in-reply-to :
	references : to : mime-version : subject : message-id : from : date :
	content-type; s=SELinc2017;
	bh=XWYUw1i2TJ13wt1iTCrmovZyNZ64ft8G1NaLYsIw1Xs=;
	b=IxOa2Q+bWSkLuT0STkRA+axnZANa8kL17W5SUXE02ulx0pkdFitv4gM2J2rkazIy8HYQ
	afh2+FD6ue3M32VTzQ/4GUHgFu9Hdqxk4GPgsoHFjWUssNHjt5cuOLB0xdR5cSBTxRLA
	C3fUmNBEt8IfJgd+2mzEF+g4/D+zgCkX7XrHXXAYeXPoqy/ndF4jYbnM1jsWTd973bsa
	KjWcWi3oWLThN83c9NYnvNtA68IL8YEVkuPEpaeA9s5sCP6/nV8lu/07Keo585/EfUl6
	I22TthArMPFXI2eozu7+G6At1m5wM1wagqGlS40Xbgt70HFptehS0Y0gfYrKtqqRSPP2
	pQ== 
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by valiant.selinc.com with ESMTP id 2ejn4383jv-1
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 08:42:35 -0800
In-Reply-To: <CAJTo0LbzU2xUfYOFE41_B63C6Fcizxs=NxZXw3KcFN0pgcp6YA@mail.gmail.com>
References: <OF27D13CF6.90DFE3AC-ON882581E8.00000604-882581E8.0000D4D8@selinc.com>
	<CAJTo0LbzU2xUfYOFE41_B63C6Fcizxs=NxZXw3KcFN0pgcp6YA@mail.gmail.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: BDD69A81:771625F6-882581E8:005B4052;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP6 April 21, 2016
Message-ID: <OFBDD69A81.771625F6-ON882581E8.005B4052-882581E8.005BCA57@selinc.com>
From: Aaron_Wright@selinc.com
Date: Thu, 30 Nov 2017 08:42:35 -0800
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP9 HF139|October
	06, 2017) at 11/30/2017 08:42:35 AM,
	Serialize complete at 11/30/2017 08:42:35 AM
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8730
	signatures=668632
Subject: Re: BKM for Importing Python Modules
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
X-List-Received-Date: Thu, 30 Nov 2017 16:42:38 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 005BCA57882581E8_="

--=_alternative 005BCA57882581E8_=
Content-Type: text/plain; charset="US-ASCII"

"Burton, Ross" <ross.burton@intel.com> wrote on 11/30/2017 02:47:43 AM:
> Python functions in classes are executed by the Python that is 
> executing bitbake, which doesn't have access to the modules in the 
> native sysroot (and won't, as any compiled modules in there are 
> linked against the native python, not the host python).

So adding to sys.path works, but only accidentially?

    sys.path.append(
        d.getVar("STAGING_DIR_NATIVE", True) +
        d.getVar("PYTHON_SITEPACKAGES_DIR", True))
 
> You can solve this by either mandating python-cryptography on the 
> host, or writing a standalone script that is executed using 
> nativepython (which is the python built by python-native).

Not a terrible idea. I'll just have to pull lots of stuff out of d and 
pass them as arguments. Thanks. 

> Ross
> 
> On 30 November 2017 at 00:09, <Aaron_Wright@selinc.com> wrote:
> I have a python function that I've added to PACKAGEFUNCS in a 
> bbclass, and I want to use python-cryptography in that function. 
> However, sys.path doesn't seem setup to allow this import. I'm 
> curious to know the best known method for using python modules that 
> are outside of  <LAYER>/lib directory. Should I just append 
> STAGING_LIBDIR_NATIVE to sys.path? 
> 
> python do_stuff() { 
>     import cryptography # <-- this fails 
> 
>     # Other stuff... 
> } 
> 
> python () { 
>     if (not bb.data.inherits_class("native", d) and 
>         not bb.data.inherits_class("cross", d)): 
> 
>         d.appendVar("PACKAGEFUNCS", " do_stuff") 
>         d.appendVarFlag( 
>             "do_package", 
>             "depends", 
>             " python-cryptography-native:do_populate_sysroot") 
> }
> --

--=_alternative 005BCA57882581E8_=
Content-Type: text/html; charset="US-ASCII"

<tt><font size=2>&quot;Burton, Ross&quot; &lt;ross.burton@intel.com&gt;
wrote on 11/30/2017 02:47:43 AM:<br>
&gt; Python functions in classes are executed by the Python that is <br>
&gt; executing bitbake, which doesn't have access to the modules in the
<br>
&gt; native sysroot (and won't, as any compiled modules in there are <br>
&gt; linked against the native python, not the host python).</font></tt>
<br>
<br><tt><font size=2>So adding to sys.path works, but only accidentially?</font></tt>
<br>
<br><tt><font size=2>&nbsp; &nbsp; sys.path.append(</font></tt>
<br><tt><font size=2>&nbsp; &nbsp; &nbsp; &nbsp; d.getVar(&quot;STAGING_DIR_NATIVE&quot;,
True) +</font></tt>
<br><tt><font size=2>&nbsp; &nbsp; &nbsp; &nbsp; d.getVar(&quot;PYTHON_SITEPACKAGES_DIR&quot;,
True))</font></tt>
<br><tt><font size=2>&nbsp;<br>
&gt; You can solve this by either mandating python-cryptography on the
<br>
&gt; host, or writing a standalone script that is executed using <br>
&gt; nativepython (which is the python built by python-native).</font></tt>
<br>
<br><tt><font size=2>Not a terrible idea. I'll just have to pull lots of
stuff out of d and pass them as arguments. Thanks. </font></tt>
<br><tt><font size=2><br>
&gt; Ross</font></tt>
<br><tt><font size=2>&gt; <br>
&gt; On 30 November 2017 at 00:09, &lt;Aaron_Wright@selinc.com&gt; wrote:</font></tt>
<br><tt><font size=2>&gt; I have a python function that I've added to PACKAGEFUNCS
in a <br>
&gt; bbclass, and I want to use python-cryptography in that function. <br>
&gt; However, sys.path doesn't seem setup to allow this import. I'm <br>
&gt; curious to know the best known method for using python modules that
<br>
&gt; are outside of &nbsp;&lt;LAYER&gt;/lib directory. Should I just append
<br>
&gt; STAGING_LIBDIR_NATIVE to sys.path? <br>
&gt; <br>
&gt; python do_stuff() { <br>
&gt; &nbsp; &nbsp; import cryptography # &lt;-- this fails <br>
&gt; <br>
&gt; &nbsp; &nbsp; # Other stuff... <br>
&gt; } <br>
&gt; <br>
&gt; python () { <br>
&gt; &nbsp; &nbsp; if (not bb.data.inherits_class(&quot;native&quot;, d)
and <br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; not bb.data.inherits_class(&quot;cross&quot;,
d)): <br>
&gt; <br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; d.appendVar(&quot;PACKAGEFUNCS&quot;,
&quot; do_stuff&quot;) <br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; d.appendVarFlag( <br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;do_package&quot;,
<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;depends&quot;, <br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot; python-cryptography-native:do_populate_sysroot&quot;)
<br>
&gt; }<br>
&gt; --<br>
</font></tt>

--=_alternative 005BCA57882581E8_=--
