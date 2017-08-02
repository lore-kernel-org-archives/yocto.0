Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42677E00B6F; Wed,  2 Aug 2017 14:22:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA662E007E4
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 14:22:06 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id t138so410183wmt.4
	for <yocto@yoctoproject.org>; Wed, 02 Aug 2017 14:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=FerFQd73goCW0VckQyy8fpWPSrg3/F5GOHKmVzOp/ao=;
	b=Zfse/y/tffkfmaXRAkzpMrV4GUDYqLlCncHKrTysaRsuCgsX/BZf0dq45FGeYNONOr
	jMf3HVcmGQrIuuSTycg7yCGP7kAxIZUl2KeZsu16+tiZgoA2TLwG2dcyyvdyvt3PhNAS
	os7Ti2I1F2cPJV95XfzEaqzwNzVxyQSW5gvOE2oU7WsEIlbVFBSDstNw10F7QQvBFFAl
	ddezW+flNnk9OnZCv5uxTNVuN9abeWYJpE2qQKYozNVLK4S6axtlISXXM8H6JHzV29Az
	jGrstqSetel9Ql7qjM9mIyIMCgX2ARPhLehqp8o1tzdEOCzMbDBVg3yo86j/P6F12hej
	Wacg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=FerFQd73goCW0VckQyy8fpWPSrg3/F5GOHKmVzOp/ao=;
	b=RqGiVlFrHEZILJ8/p1hQ6H7GDaJo5FWRqx0qNzPJT/9eOyPsGmwqeG5CLsdli3U7Os
	BXUlp2mafwrVLzgpAo5pJtIK9Ol4sJjZRi4QPA/II8l0hHUR8dwo2W76qeFkLTQkK358
	7Mc9IfE22eOjbCIRcanvh/DOVUGK+mvB2mKHs5DkImWt4Vn0tohJfXBpFcGusH6UaDBT
	o8Nqg97meQ9dvGSaaOiWlLVokvZ01Yju7dzHo9SjFqpwOKWYv3bepIUfKGnGPbOOQ8mJ
	DXYilqr5bz2FcCA5kuT8n18Y7FGqlhw/xhM8IVDL39sSAmd8jYeSqen6mjNsBxAEf79I
	tFlw==
X-Gm-Message-State: AIVw1133SzvW8OxI47lI7+DuSdOxFDYd3Da5CdJ5uKjsxkIVGmF6PP3p
	d/wzlct8wvH6qF7ErxxIQYM1ogffdw==
X-Received: by 10.80.145.38 with SMTP id e35mr23098001eda.8.1501708925878;
	Wed, 02 Aug 2017 14:22:05 -0700 (PDT)
MIME-Version: 1.0
References: <568398942.4073936.1501667235929.ref@mail.yahoo.com>
	<568398942.4073936.1501667235929@mail.yahoo.com>
	<CAJTo0LbifEhF4sUgZmaipkem2tRDUurWyvqBMmYE2GA4oRwAfw@mail.gmail.com>
In-Reply-To: <CAJTo0LbifEhF4sUgZmaipkem2tRDUurWyvqBMmYE2GA4oRwAfw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 02 Aug 2017 21:21:54 +0000
Message-ID: <CAMKF1soF=1a8xPTDh6nQz_5iYdaRUaXj4DCUhL6T2pPO61rm-w@mail.gmail.com>
To: Bacheh Karaji <bachehkaraji@yahoo.com>, "Burton,
	Ross" <ross.burton@intel.com>
Cc: Yocto Discussion List <yocto@yoctoproject.org>
Subject: Re: How to strip down my Yocto Linux?
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
X-List-Received-Date: Wed, 02 Aug 2017 21:22:08 -0000
Content-Type: multipart/alternative; boundary="f403045c0c641547870555cbdba1"

--f403045c0c641547870555cbdba1
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 2, 2017 at 3:35 AM Burton, Ross <ross.burton@intel.com> wrote:

> First, the core images are examples; copy and paste the closest to what
> you want and then modify the recipe.
>
> If you want a really small image then start from core-image-minimal, but
> be aware that is missing a lot of stuff you may actually want.
>

And use poky-tiny for distro reference to build up your own

>
> How to remove things depends on how they got installed in the first
> place.  Unless you have doc-pkgs in IMAGE_FEATURES then you shouldn't have
> any man pages or documentation.  If the poco recipe installs sample code
> you don't want then fix the recipe to put those in another package. etc etc.
>
> Ross
>
> On 2 August 2017 at 10:47, Bacheh Karaji <bachehkaraji@yahoo.com> wrote:
>
>> I would like to strip down my Yocto Linux before put in it to flash.
>> Unneeded software, man pages, POCO sample codes and other documentation
>> just waste resource, especially on the i.MX28 EVK with only 128MB flash.
>>
>> My local.conf file looks following:
>>
>>
>>
>>
>>
>> *$ gedit conf/local.conf & ... IMAGE_INSTALL_append = " poco nginx
>> canutils vsftpd curl fcgi spawn-fcgi net-snmp util-linux ubiattach-klibc
>> ubimkvol-klibc ubiformat-klibc minicom net-tools zeroconf avahi-autoipd
>> mtd-utils u-boot-fw-utils ethtool" ... I bitbake the image
>> "core-image-base"*.
>>
>> I was wondering, is there a way that I can delete all of the Unneeded
>> files?
>>
>> Can somebody help me howto strip down my Yocto Linux?
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f403045c0c641547870555cbdba1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Wed, Aug 2, 2017 a=
t 3:35 AM Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com">ross.bu=
rton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>=
<div>First, the core images are examples; copy and paste the closest to wha=
t you want and then modify the recipe.</div><div><br></div>If you want a re=
ally small image then start from core-image-minimal, but be aware that is m=
issing a lot of stuff you may actually want.</div></blockquote><div dir=3D"=
auto"><br></div><div dir=3D"auto">And use poky-tiny for distro reference to=
 build up your own=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div><br>=
</div><div>How to remove things depends on how they got installed in the fi=
rst place.=C2=A0 Unless you have doc-pkgs in IMAGE_FEATURES then you should=
n&#39;t have any man pages or documentation.=C2=A0 If the poco recipe insta=
lls sample code you don&#39;t want then fix the recipe to put those in anot=
her package. etc etc.</div></div><div><div><br></div><div>Ross</div></div><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 2 August 2017 a=
t 10:47, Bacheh Karaji <span>&lt;<a href=3D"mailto:bachehkaraji@yahoo.com" =
target=3D"_blank">bachehkaraji@yahoo.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div><div style=3D"font-family:Helvetica Neue,Helveti=
ca,Arial,sans-serif;font-size:x-small"><p style=3D"margin:0px 0px 1em;paddi=
ng:0px;border:0px;font-stretch:inherit;line-height:inherit;vertical-align:b=
aseline;clear:both;color:rgb(36,39,41)"><span style=3D"font-family:Arial,&q=
uot;Helvetica Neue&quot;,Helvetica,sans-serif;font-size:15px">I would like =
to strip down my Yocto Linux before put in it to flash. Unneeded software, =
man pages, POCO sample codes and other documentation just waste resource, e=
specially on the i.MX28 EVK with only 128MB flash.
</span><br>
<br><span style=3D"font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,s=
ans-serif;font-size:15px">My local.conf file looks following:
</span><br>
<br><font face=3D"courier new, courier, monaco, monospace, sans-serif" size=
=3D"2"><i>$ gedit conf/local.conf &amp;
<br>...
<br>IMAGE_INSTALL_append =3D &quot; poco nginx canutils vsftpd curl fcgi sp=
awn-fcgi net-snmp util-linux ubiattach-klibc ubimkvol-klibc ubiformat-klibc=
 minicom net-tools zeroconf avahi-autoipd mtd-utils u-boot-fw-utils ethtool=
&quot;
<br>...
<br>I bitbake the image &quot;core-image-base&quot;</i>.
</font><br>
<br><span style=3D"font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,s=
ans-serif;font-size:15px">I was wondering, is there a way that I can delete=
 all of the Unneeded files?
</span><br>
<br><span style=3D"font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,s=
ans-serif;font-size:15px">Can somebody help me howto strip down my Yocto Li=
nux?</span><br></p></div></div><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--f403045c0c641547870555cbdba1--
