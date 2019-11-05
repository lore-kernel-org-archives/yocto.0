Return-Path: <JK.Behnke@web.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C94FE00DEB; Mon,  4 Nov 2019 23:55:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,MIME_HTML_ONLY,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jk.behnke[at]web.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.17.12 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Mon, 04 Nov 2019 23:55:51 PST
Received: from mout.web.de (mout.web.de [212.227.17.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8C48E00DE5
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2019 23:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
	s=dbaedf251592; t=1572940550;
	bh=ZMT2uDMU9QaixWuvJ20M6Kdqi9STlyVmBWmztnsJgCE=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=QGKVQT+CUHGTQYvv447Qm7Myq/tm/ePiFsJ1mabvJzqn3kIKhFP7FZAC5+LLmGGVM
	6SNZVl8LDHBdAR3gWQS0MMSkZ0QmfW6FG4X7uKDpQQ99hiyU77Ued8AbKW4RFSVM+q
	9G+H0j3ei77k1TkMgWH8BSET+0AO7o1QWH1BQCTc=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [212.185.41.2] ([212.185.41.2]) by web-mail.web.de
	(3c-app-webde-bap31.server.lan [172.19.172.31]) (via HTTP);
	Tue, 5 Nov 2019 08:50:47 +0100
MIME-Version: 1.0
Message-ID: <trinity-668a276c-41b8-43e8-9584-63e85940448c-1572940247665@3c-app-webde-bap31>
From: JK.Behnke@web.de
To: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 5 Nov 2019 08:50:47 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAMKF1squJHoCUUTBtAPd=XyAq7UAtCxOgPHrVmX8=x3-3NEvDQ@mail.gmail.com>
References: <trinity-9c767986-f846-4e0a-9b8c-834746d6fc80-1572599196046@3c-app-webde-bs43>
	<CAMKF1squJHoCUUTBtAPd=XyAq7UAtCxOgPHrVmX8=x3-3NEvDQ@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:pwYHe0lzyKSJDb7Riq6RspRnYmWptkMXs/vcXkkxlzpzfH7UZsi1AGCTpEM2oSZJEdXuM
	qtYd0OLxINqU6JWHrLSmZcWfbNurLrZUfclH3Se2BLQ6MgBknrFdmFpRkLBBSzKFLr3/wcOlh8hz
	AFsTO/fxqdiSKM3sojVSiQdj59pq1PgFUCJtQTHL2aqImMqbABr2WLtuba/snHGJPnzn+IubmEZq
	B6J4ZsyKvgi98uM9l9iEx3a67jtfO3P5wmLAcjjqB7yP8c6I+k1s7OCgag2dPRE/zo1Gh15sqPAa
	e0=
X-UI-Out-Filterresults: notjunk:1;V03:K0:9lKK4Xh/2Yo=:jIuDK+7LIVQsXk77MRDcHY
	OSHPQEvHB006QSsqiFdxf3xym1F7YjEg3ye6CtH8LY0csK8wWIkDU+VxtxJpitPMqKwh2L2eQ
	P8kqt82KfgR4gfJeRPsNVgnqx+D/Xn7XVA04CabXoqWgpiXeHLvXPDTvdY+uB1UGhR7ZHBCKk
	BS08v09AdT9qMfz6uNr8Ct6GBJgs78iyQ+KgpJBwwyMIHJZMPh8COZbDTSXEgf2q0UL8u313E
	6xW1V7xwoCv+XJCMCoBZPYRwwsrAXXIr5aJZmHkc6UU1Ezucllls7xO1IRdM4t5frkjI2n1lQ
	iTQw4LkCu4exgEFJVk1cakK3HCGIzUueEJuDKb0yv2NfUziNRZovywwvRmOJ0qzGxPYd6OiVB
	k22r3mTyrZkCGJgbBQ6Kpw/CeXqvVDU2ceaaxlJtN3u3egbkAeaD9/fmi3516TOljTPt6tYlR
	hF6+dloCrDFOPAsTitnBEX48ZSFw/21U0b58ubzVaNCiLzVMC74ro9SOGR+4XIwFeuCtlZeIk
	pDlgBN0VqCGvzqeH+PRDM2n5IhY9GR5QiqcTW7KY64nSA7or9OIkhwLiYJ04M7U3c4fwVTr40
	v+PF4oIl2dKjlJCLmtjbeJfglVR1t3+DKubPad0NP0ciGXfEizyfa4LUbqQRPxnL+KhuDDo+v
	xBX6cFAAmXwdvh0uZYl+JOakkRJwJLUUq0B+/Joc4Uh1mpg==
Cc: yocto@yoctoproject.org
Subject: Re: poky thud: qtscript fails to build with undefined reference to `cti_vm_throw'
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
X-List-Received-Date: Tue, 05 Nov 2019 07:55:54 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>Hello Khem,</div>

<div>&gt;Gesendet: Freitag, 01. November 2019 um 18:23 Uhr<br/>
&gt;Von: &quot;Khem Raj&quot; &lt;raj.khem@gmail.com&gt;<br/>
&gt;An: JK.Behnke@web.de<br/>
&gt;Cc: &quot;Yocto Project&quot; &lt;yocto@yoctoproject.org&gt;<br/>
&gt;Betreff: Re: [yocto] poky thud: qtscript fails to build with undefined reference to &#96;cti_vm_throw&#39;<br/>
&gt;On Fri, Nov 1, 2019 at 2:12 AM &lt;JK.Behnke@web.de&gt; wrote:<br/>
&gt;&gt;<br/>
&gt;&gt; Hello,<br/>
&gt;&gt;<br/>
&gt;&gt; I tried to build a poky SDK with QT5 support (I am using poky thud).<br/>
&gt;&gt; Unfortunately this failed while bitbaking qtscript.<br/>
&gt;&gt; When executing &quot;bitbake qtscript&quot; directly I get the same error.<br/>
&gt;&gt;<br/>
&gt;&gt; Here are the IMHO relevant lines of the huge log.do_compile file.<br/>
&gt;&gt; I have replaced the long paths by &lt;...&gt; for clarity.<br/>
&gt;&gt;<br/>
&gt;&gt; -- multiple warnings ---<br/>
&gt;&gt; ... warning: &#39;template&lt;class&gt; class std::auto_ptr&#39; is deprecated [-Wdeprecated-declarations]<br/>
&gt;&gt; ---<br/>
&gt;&gt;<br/>
&gt;&gt; -- warning ---<br/>
&gt;&gt; In member function &#39;allocatePropertyStorageInline&#39;,<br/>
&gt;&gt; inlined from &#39;allocatePropertyStorage&#39; at &lt;...&gt;/git/src/3rdparty/javascriptcore/JavaScriptCore/runtime/JSObject.cpp:546:34:<br/>
&gt;&gt; &lt;...&gt;/git/src/3rdparty/javascriptcore/JavaScriptCore/runtime/JSObject.h:679:68: warning: argument 1 value &#39;4294967295&#39; exceeds maximum object size 2147483647 [-Walloc-size-larger-than=]<br/>
&gt;&gt; PropertyStorage newPropertyStorage = new EncodedJSValue[newSize];<br/>
&gt;&gt; ^<br/>
&gt;&gt; &lt;...&gt;/git/src/3rdparty/javascriptcore/JavaScriptCore/runtime/JSObject.h: In member function &#39;allocatePropertyStorage&#39;:<br/>
&gt;&gt; &lt;...&gt;/recipe-sysroot/usr/include/c++/8.2.0/new:122:7: note: in a call to allocation function &#39;operator new []&#39; declared here<br/>
&gt;&gt; void* operator new[](std::size_t) _GLIBCXX_THROW (std::bad_alloc)<br/>
&gt;&gt; ---<br/>
&gt;&gt;<br/>
&gt;&gt; --- error ---<br/>
&gt;&gt; &lt;...&gt;/recipe-sysroot-native/usr/bin/i686-poky-linux/../../libexec/i686-poky-linux/gcc/i686-poky-linux/8.2.0/ld: &lt;...&gt;/recipe-sysroot-native/usr/bin/i686-poky-linux/../../libexec/i686-poky-linux/gcc/i686-poky-linux/8.2.0/ld: DWARF error: invalid abstract instance DIE ref<br/>
&gt;&gt; /tmp/ccSwzRoN.ltrans0.ltrans.o: in function &#96;ctiVMThrowTrampoline&#39;:<br/>
&gt;&gt; &lt;artificial&gt;:(.text+0x1f): undefined reference to &#96;cti_vm_throw&#39;<br/>
&gt;&gt; collect2: error: ld returned 1 exit status<br/>
&gt;&gt; Makefile:666: recipe for target &#39;../../lib/libQt5Script.so.5.12.2&#39; failed<br/>
&gt;&gt; ---<br/>
&gt;&gt;<br/>
&gt;&gt; Has anyone an idea what could be the problem?<br/>
&gt;&gt;<br/>
&gt;<br/>
&gt;perhaps we need to patch binutils/ld with<br/>
&gt;<br/>
&gt;https://patches-gcc.linaro.org/patch/9614/<br/>
&gt;<br/>
&gt;see<br/>
&gt;https://sourceware.org/bugzilla/show_bug.cgi?id=23425[https://sourceware.org/bugzilla/show_bug.cgi?id=23425]<br/>
&gt;<br/>
&gt;if you could try it out and report back that would be awesome<br/>
&gt;</div>

<div>I have applied the patch the bottom of this page&nbsp; https://patches-gcc.linaro.org/patch/9614/</div>

<div><br/>
Unfortunately this did not solve the problem.<br/>
Now I get this error: &quot;DWARF error: could not find abbrev number 72&quot;</div>

<div>&nbsp;</div>

<div>Here the complete error message:<br/>
/home/behnkjoc/prc2020/poky/build-tca5-32/tmp/work/core2-32-poky-linux/qtscript/5.12.2+gitAUTOINC+6c0edaf30c-r0/recipe-sysroot-native/usr/bin/i686-poky-linux/../../libexec/i686-poky-linux/gcc/i686-poky-linux/8.2.0/ld: /home/behnkjoc/prc2020/poky/build-tca5-32/tmp/work/core2-32-poky-linux/qtscript/5.12.2+gitAUTOINC+6c0edaf30c-r0/recipe-sysroot-native/usr/bin/i686-poky-linux/../../libexec/i686-poky-linux/gcc/i686-poky-linux/8.2.0/ld: DWARF error: could not find abbrev number 72<br/>
/tmp/cccEIw32.ltrans0.ltrans.o: in function &#96;ctiVMThrowTrampoline&#39;:<br/>
&lt;artificial&gt;:(.text+0x1f): undefined reference to &#96;cti_vm_throw&#39;<br/>
collect2: error: ld returned 1 exit status</div>

<div>&nbsp;</div>

<div><br/>
Regards<br/>
Jochen</div>

<div>&nbsp;</div></div></body></html>

