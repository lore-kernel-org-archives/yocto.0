Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 328A2E00D07; Wed, 29 Nov 2017 16:15:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.117.214.141 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 386 seconds by postgrey-1.32 at yocto-www;
	Wed, 29 Nov 2017 16:15:31 PST
Received: from valiant.selinc.com (valiant.selinc.com [74.117.214.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BF5FE00CFF
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 16:15:31 -0800 (PST)
Received: from pps.filterd (valiant.selinc.com [127.0.0.1])
	by valiant.selinc.com (8.16.0.21/8.16.0.21) with SMTP id vAU079QO003636
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 16:09:05 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=selinc.com;
	h=to : mime-version :
	subject : message-id : from : date : content-type; s=SELinc2017;
	bh=0v+EQERAdTvIxlUmRegNO3KOlnIRjdn80f1bhS8kBd8=;
	b=Fv8fo2yyFxRMeJtP7iQgF84ergYhIVAVgjrnThLaCXsCOh6MixaQSwRWoELOcdwOIac5
	dTl1bOCqRSLZWvOChlwz58d6F9ZRckGENvtv+1WeubZPkGZKtHBR3MrR0HcyfZRz6qNs
	C6RM/RgJuAq/1mE6fXy1j3EMNIss2A/F7IYXVjwZE0L6pEy7lQjFD80jI+q44EuUcvsu
	J7Eo7r2g04CcfCpmU7ksFbeEHZeo52nQfVyT6gGcrIBCUcWSeaLGaED5l6vSIVFKs8q/
	/09x43kkvz1cG9VJ46xZqbSA6dmpeETHf7vph+CzxDpjreBZufuDZ1zsyUZMrIUJzonw
	Yg== 
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by valiant.selinc.com with ESMTP id 2egqnsdmvr-1
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 16:09:05 -0800
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
X-KeepSent: 27D13CF6:90DFE3AC-882581E8:00000604;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP6 April 21, 2016
Message-ID: <OF27D13CF6.90DFE3AC-ON882581E8.00000604-882581E8.0000D4D8@selinc.com>
From: Aaron_Wright@selinc.com
Date: Wed, 29 Nov 2017 16:09:04 -0800
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP9 HF139|October
	06, 2017) at 11/29/2017 04:09:04 PM,
	Serialize complete at 11/29/2017 04:09:04 PM
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8730
	signatures=668632
Subject: BKM for Importing Python Modules
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
X-List-Received-Date: Thu, 30 Nov 2017 00:15:33 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0000D4D8882581E8_="

--=_alternative 0000D4D8882581E8_=
Content-Type: text/plain; charset="US-ASCII"

I have a python function that I've added to PACKAGEFUNCS in a bbclass, and 
I want to use python-cryptography in that function. However, sys.path 
doesn't seem setup to allow this import. I'm curious to know the best 
known method for using python modules that are outside of  <LAYER>/lib 
directory. Should I just append STAGING_LIBDIR_NATIVE to sys.path?

python do_stuff() {
    import cryptography # <-- this fails

    # Other stuff...
}

python () {
    if (not bb.data.inherits_class("native", d) and
        not bb.data.inherits_class("cross", d)):

        d.appendVar("PACKAGEFUNCS", " do_stuff")
        d.appendVarFlag(
            "do_package", 
            "depends", 
            " python-cryptography-native:do_populate_sysroot")
}

--=_alternative 0000D4D8882581E8_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">I have a python function that I've added
to PACKAGEFUNCS in a bbclass, and I want to use python-cryptography in
that function. However, sys.path doesn't seem setup to allow this import.
I'm curious to know the best known method for using python modules that
are outside of &nbsp;&lt;LAYER&gt;/lib directory. Should I just append
STAGING_LIBDIR_NATIVE to sys.path?</font>
<br>
<br><font size=2 face="sans-serif">python do_stuff() {</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; import cryptography #
&lt;-- this fails</font>
<br>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; # Other stuff...</font>
<br><font size=2 face="sans-serif">}</font>
<br>
<br><font size=2 face="sans-serif">python () {</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; if (not bb.data.inherits_class(&quot;native&quot;,
d) and</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; not bb.data.inherits_class(&quot;cross&quot;,
d)):</font>
<br>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; d.appendVar(&quot;PACKAGEFUNCS&quot;,
&quot; do_stuff&quot;)</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; d.appendVarFlag(</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&quot;do_package&quot;, </font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&quot;depends&quot;, </font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&quot; python-cryptography-native:do_populate_sysroot&quot;)</font>
<br><font size=2 face="sans-serif">}</font>

--=_alternative 0000D4D8882581E8_=--
