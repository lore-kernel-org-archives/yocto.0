Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0B29E009A0; Thu,  2 Feb 2017 14:47:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.181 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f181.google.com (mail-ua0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D93ABE00826
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 14:47:52 -0800 (PST)
Received: by mail-ua0-f181.google.com with SMTP id i68so1835277uad.0
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2017 14:47:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=kUr/6Zae7fqzOXupw+reEyb3ynjY5uY/LsE5VpffzSE=;
	b=tp6tf0EV3CM62OECEfnuHgJ8jL7cl+1cBMGit+aAsYhGQM+liCuHk0DjkrSopeq2+Y
	rF6kdp434+IIpk4JuksZwJA07yzGMG6iFz5zDrreGlVSSeaGVgWE38+cws9wzeUXXp8D
	2l3uk7gvRagapkKCMI0C05ea8Okb9fVixX8lbo6oHCNF7BUjCsnBAF9AF3IptyYzCO0f
	c2tYRryMrzhbl/FZ9O0PCXk1btHywYUoZlHbfeqwhFRmWnV4IHItZof2NFmjDReJyGdL
	khCLI0ZQ9jS9hrxQTc9bioCFv+uGkFU6OXIf8RwbSKFntGjzIXDoJOMXopy4TWWEp4Ur
	0Tew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=kUr/6Zae7fqzOXupw+reEyb3ynjY5uY/LsE5VpffzSE=;
	b=cFcOacFWupCMZOtZVgRFLAc+lVIjR67V/qhjeEYNp8/RnucYqD9AmR00ambSMJ9bT0
	BBdjyw6wcqALKsylnVf2lq2+BwHbqAIIGyQVMqzJYqcd/ZZ8TyRVPGaFlz7JMiB+sJZq
	xf17Hvz5xmNVRvsFdhyeLcvTv9Y3gAR4RFvUENHBrjedeN8vx8n5UOAAKoF780O6lzfG
	Lgod2F1WtuE+PKKxbLex5o7S8d6rgUAgDopu6SHkQdyMlfR7VsuV/+yRUyiMtzdWycHR
	7ML0BmRpw5Fr67ooiFtATV8QzcF6XVX+1NBMp82mnBaY2KGgPoACAJv0Dz8RUVLVnycI
	Arcw==
X-Gm-Message-State: AIkVDXJrljBDFjeLC5pw+mekUTq75T45CrvoqImWGDxv+eld9A9b75odQxDoQz1SyZ3UUQx9qGpqicgR5PW/ZQ==
X-Received: by 10.176.83.153 with SMTP id k25mr4632780uaa.141.1486075671759;
	Thu, 02 Feb 2017 14:47:51 -0800 (PST)
MIME-Version: 1.0
References: <DM5PR0101MB29538BCBC9CDC57270E87C48B64C0@DM5PR0101MB2953.prod.exchangelabs.com>
	<DM5PR0101MB295318DCFD9BA318D91CD38BB64C0@DM5PR0101MB2953.prod.exchangelabs.com>
In-Reply-To: <DM5PR0101MB295318DCFD9BA318D91CD38BB64C0@DM5PR0101MB2953.prod.exchangelabs.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 02 Feb 2017 22:47:40 +0000
Message-ID: <CAMKF1sr4Go-8_9k+1d32JkzSeWKguc9S+iZ94Vk_iFKrv_-kDw@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Ruby and OpenSSL version mismatch?
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
X-List-Received-Date: Thu, 02 Feb 2017 22:47:55 -0000
Content-Type: multipart/alternative; boundary=f403045dd7ec8651e2054793f4cb

--f403045dd7ec8651e2054793f4cb
Content-Type: text/plain; charset=UTF-8

Send a back port request


On Thu, Feb 2, 2017 at 5:32 AM Takashi Matsuzawa <tmatsuzawa@xevo.com>
wrote:

> Hello, I just tried and the below seems to be the fix.
>
>
> https://patchwork.openembedded.org/patch/119999/
>
> ------------------------------
> *From:* Takashi Matsuzawa
> *Sent:* Thursday, February 2, 2017 3:25 PM
> *To:* yocto@yoctoproject.org
> *Subject:* Ruby and OpenSSL version mismatch?
>
>
> Hello, Yocto.
>
> I am trynig a build of fido based yocto image, with openssl 1.0.2j for
> security reason.
> The openssl recipe itself builds successfully, but later in the build I
> see error in jscore.
> In fact, ruby is complaining that 'OPENSSL_1.0.0' is not available.
>
> |
> /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in
> `require':
> /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/x86_64-linux-gnu/digest/../../../../libcrypto.so.1.0.0:
> version `OPENSSL_1.0.0' not found (required by
> /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/x86_64-linux-gnu/digest/sha1.so)
> -
> /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/x86_64-linux-gnu/digest/sha1.so
> (LoadError)
> |     from
> /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in
> `require'
> |     from
> /xxx/work/core2-32-poky-linux/qtwebkit/5.5.0+gitAUTOINC+0d592678ba-r0/git/Source/JavaScriptCore/offlineasm/generate_offset_extractor.rb:30:in
> `<main>'
> | make[2]: *** [LLIntDesiredOffsets.h] Error 1
>
> In fact, if I do objdump -p on sha1.so (in ruby tree):
>
> >  required from libcrypto.so.1.0.0:
> >    0x066a2b20 0x00 02 OPENSSL_1.0.0
>
> Whereas, my libcrypt.so.1.0.0 says:
>
> >Version definitions:
> >1 0x01 0x0746be50 libcrypto.so.1.0.0
> >2 0x00 0x06a2b2e4 OPENSSL_1.0.2d
> >3 0x00 0x06a2b2e7 OPENSSL_1.0.2g
> >    OPENSSL_1.0.2d
>
> So, this might be the cause of the problem.
> But I am not sure why sha1.so (which ruby build generats) define these
> version numbers and not refer to the OpenSSL library in the build.
>
> I googled, but there were some tips on updating ruby to solve OpenSSL
> version mismatch, but it is through grew or apt-get, etc.  Not a tip for
> yocto build.
>
> I may be not familiar with ruby build yet, but any idea how I can fix this?
> I could try updating ruby recipe as well to more recent version, but first
> I want to confirm how ruby is deciding the OpenSSL version for its plugin
> library and causing this mismatch.
>
> Thank you for your knowledge..
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f403045dd7ec8651e2054793f4cb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div>Send a back port request=C2=A0</div><div><br></div><div><br><div class=
=3D"gmail_quote"><div>On Thu, Feb 2, 2017 at 5:32 AM Takashi Matsuzawa &lt;=
<a href=3D"mailto:tmatsuzawa@xevo.com">tmatsuzawa@xevo.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">




<div class=3D"gmail_msg">
<div id=3D"m_-4250042900346355981divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif" class=3D"=
gmail_msg">
<p class=3D"gmail_msg">Hello, I just tried and=C2=A0the below seems to be t=
he=C2=A0fix.</p>
<p class=3D"gmail_msg"><br class=3D"gmail_msg">
</p>
<p class=3D"gmail_msg"><a href=3D"https://patchwork.openembedded.org/patch/=
119999/" class=3D"m_-4250042900346355981OWAAutoLink gmail_msg" id=3D"m_-425=
0042900346355981LPlnk864878" target=3D"_blank">https://patchwork.openembedd=
ed.org/patch/119999/</a></p>
<br class=3D"gmail_msg">
<div style=3D"color:rgb(0,0,0)" class=3D"gmail_msg">
<hr style=3D"display:inline-block;width:98%" class=3D"gmail_msg">
<div id=3D"m_-4250042900346355981divRplyFwdMsg" class=3D"gmail_msg"><font f=
ace=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt" clas=
s=3D"gmail_msg"><b class=3D"gmail_msg">From:</b> Takashi Matsuzawa<br class=
=3D"gmail_msg">
<b class=3D"gmail_msg">Sent:</b> Thursday, February 2, 2017 3:25 PM<br clas=
s=3D"gmail_msg">
<b class=3D"gmail_msg">To:</b> <a href=3D"mailto:yocto@yoctoproject.org" cl=
ass=3D"gmail_msg" target=3D"_blank">yocto@yoctoproject.org</a><br class=3D"=
gmail_msg">
<b class=3D"gmail_msg">Subject:</b> Ruby and OpenSSL version mismatch?</fon=
t>
<div class=3D"gmail_msg">=C2=A0</div>
</div></div></div></div><div class=3D"gmail_msg"><div id=3D"m_-425004290034=
6355981divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font-fam=
ily:Calibri,Arial,Helvetica,sans-serif" class=3D"gmail_msg"><div style=3D"c=
olor:rgb(0,0,0)" class=3D"gmail_msg">
<div class=3D"gmail_msg">
<div id=3D"m_-4250042900346355981divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif" class=3D"=
gmail_msg">
<p class=3D"gmail_msg"></p>
<div class=3D"gmail_msg">Hello, Yocto.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
I am trynig a build of fido based yocto image, with openssl 1.0.2j for secu=
rity reason.<br class=3D"gmail_msg">
The openssl recipe itself builds successfully, but later in the build I see=
 error in jscore.<br class=3D"gmail_msg">
In fact, ruby is complaining that &#39;OPENSSL_1.0.0&#39; is not available.=
<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
| /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/rubygems/core_ext/kernel_re=
quire.rb:54:in `require&#39;: /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0=
/x86_64-linux-gnu/digest/../../../../libcrypto.so.1.0.0: version `OPENSSL_1=
.0.0&#39; not found (required by /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.=
2.0/x86_64-linux-gnu/digest/sha1.so)
 - /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/x86_64-linux-gnu/digest/sh=
a1.so (LoadError)<br class=3D"gmail_msg">
| =C2=A0=C2=A0 =C2=A0from /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/rub=
ygems/core_ext/kernel_require.rb:54:in `require&#39;<br class=3D"gmail_msg"=
>
| =C2=A0=C2=A0 =C2=A0from /xxx/work/core2-32-poky-linux/qtwebkit/5.5.0+gitA=
UTOINC+0d592678ba-r0/git/Source/JavaScriptCore/offlineasm/generate_offset_e=
xtractor.rb:30:in `&lt;main&gt;&#39;<br class=3D"gmail_msg">
| make[2]: *** [LLIntDesiredOffsets.h] Error 1<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
In fact, if I do objdump -p on sha1.so (in ruby tree):<br class=3D"gmail_ms=
g">
<br class=3D"gmail_msg">
&gt;=C2=A0 required from libcrypto.so.1.0.0:<br class=3D"gmail_msg">
&gt;=C2=A0=C2=A0=C2=A0 0x066a2b20 0x00 02 OPENSSL_1.0.0<br class=3D"gmail_m=
sg">
<br class=3D"gmail_msg">
Whereas, my libcrypt.so.1.0.0 says:<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
&gt;Version definitions:<br class=3D"gmail_msg">
&gt;1 0x01 0x0746be50 libcrypto.so.1.0.0<br class=3D"gmail_msg">
&gt;2 0x00 0x06a2b2e4 OPENSSL_1.0.2d<br class=3D"gmail_msg">
&gt;3 0x00 0x06a2b2e7 OPENSSL_1.0.2g<br class=3D"gmail_msg">
&gt;=C2=A0=C2=A0 =C2=A0OPENSSL_1.0.2d <br class=3D"gmail_msg">
<br class=3D"gmail_msg">
So, this might be the cause of the problem.<br class=3D"gmail_msg">
But I am not sure why sha1.so (which ruby build generats) define these vers=
ion numbers and not refer to the OpenSSL library in the build.<br class=3D"=
gmail_msg">
<br class=3D"gmail_msg">
I googled, but there were some tips on updating ruby to solve OpenSSL versi=
on mismatch, but it is through grew or apt-get, etc.=C2=A0 Not a tip for yo=
cto build.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
I may be not familiar with ruby build yet, but any idea how I can fix this?=
<br class=3D"gmail_msg">
I could try updating ruby recipe as well to more recent version, but first =
I want to confirm how ruby is deciding the OpenSSL version for its plugin l=
ibrary and causing this mismatch.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
Thank you for your knowledge..<br class=3D"gmail_msg">
</div>
<br class=3D"gmail_msg">
<p class=3D"gmail_msg"></p>
</div>
</div>
</div></div></div>

--<br class=3D"gmail_msg">
_______________________________________________<br class=3D"gmail_msg">
yocto mailing list<br class=3D"gmail_msg">
<a href=3D"mailto:yocto@yoctoproject.org" class=3D"gmail_msg" target=3D"_bl=
ank">yocto@yoctoproject.org</a><br class=3D"gmail_msg">
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" class=3D"gmail_msg" target=3D"_blank">https://lists.yoctoproject.org/list=
info/yocto</a><br class=3D"gmail_msg">
</blockquote></div></div>

--f403045dd7ec8651e2054793f4cb--
