Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0E60E00EF7; Wed, 23 Sep 2015 03:31:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EA31E00992
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 03:31:34 -0700 (PDT)
Received: by vkfp126 with SMTP id p126so24236159vkf.3
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 03:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=Zkyi8T78ySaXtVzm0PDQLFfrXJExrDpI316mT7dkkVM=;
	b=GKWZ8t8Ds+M6xGp0gAc/nTRKPs4dt28Y8QilhCn1h2ajhH+dXr5hoa5R89yiIP43sg
	WEgaxktPxMrDKXKQ8n41gWB7nBs/aIMeMLuf9T9BZoxtNlKl5Gzec3Tn2uN/GOe5hG7u
	fBfS9W16l0EwtjsWM9uYVULl5XTj92wnApP2nF8uvtlO9ZbfSD9dEvMjkI/J4xWrBZkY
	zkTZGREbL/Hu40ho5u7EQ1IqUVDJv/LH1Jj7fz+3NjiH2pOj32eSMoxRpwAkNqXHOvN+
	ISA/x/YomY/mkHP0v250+pgVyLb1YYeTPU0DlchR94bj12cmGrM7dOdx3T1YJrD4J6dD
	PRdg==
MIME-Version: 1.0
X-Received: by 10.31.172.70 with SMTP id v67mr21570081vke.47.1443004294036;
	Wed, 23 Sep 2015 03:31:34 -0700 (PDT)
Received: by 10.31.179.207 with HTTP; Wed, 23 Sep 2015 03:31:33 -0700 (PDT)
In-Reply-To: <CAJTo0LY2TTt=ebrz0dd0X313+tgY49+WKTOWW2-ZnyjGaiF6+Q@mail.gmail.com>
References: <CALLyC8Qt4X-=Ea7jcOY4TEnBUrGBJq_nPhALteENznRhmooCdA@mail.gmail.com>
	<CAJTo0LY2TTt=ebrz0dd0X313+tgY49+WKTOWW2-ZnyjGaiF6+Q@mail.gmail.com>
Date: Wed, 23 Sep 2015 16:01:33 +0530
Message-ID: <CALLyC8TMiby0cPf-9Dugs+0Dn0juPFyXrCnCFY586mi-N_4iSA@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>, yocto@yoctoproject.org
Subject: Re: Does mount.cifs command includes in busybox package
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
X-List-Received-Date: Wed, 23 Sep 2015 10:31:36 -0000
Content-Type: multipart/alternative; boundary=001a114406145b05dc0520679ed6

--001a114406145b05dc0520679ed6
Content-Type: text/plain; charset=UTF-8

HI

Thanks Ross
          i saw  cifs-utils recipe from openembedded ( from samba) provides
mount.cifs command other than that any other package provides same command?

thanks and regards
       vivek

On Wed, Sep 23, 2015 at 3:31 PM, Burton, Ross <ross.burton@intel.com> wrote:

> mount.cifs is provided by Samba.
>
> Ross
>
> On 23 September 2015 at 10:56, Vivek Per <pervivek@gmail.com> wrote:
>
>> hi all,
>>      Does mount.cifs command includes in busybox package . If so then it
>> includes what package
>>
>> PN= busybox
>>
>>
>> PACKAGES =+ "${PN}-httpd ${PN}-udhcpd ${PN}-udhcpc ${PN}-syslog
>> ${PN}-mdev ${PN}-hwclock"
>>
>> in which package cifs command include
>>
>> If not does it includes in
>> utils-linux package
>>
>> Thanks and regards
>>         vivek
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--001a114406145b05dc0520679ed6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">HI<div>=C2=A0 =C2=A0 =C2=A0</div><div>Thanks Ross</div><di=
v>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 i saw =C2=A0cifs-utils recipe from ope=
nembedded ( from samba) provides mount.cifs command other than that any oth=
er package provides same command?</div><div><br></div><div>thanks and regar=
ds=C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0vivek</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Sep 23, 2015 at 3:3=
1 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@inte=
l.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div dir=3D"ltr">mount.cifs is provided by Samb=
a.<div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote"><div><div class=3D"h5">On 23 September 2015 at 10:56, =
Vivek Per <span dir=3D"ltr">&lt;<a href=3D"mailto:pervivek@gmail.com" targe=
t=3D"_blank">pervivek@gmail.com</a>&gt;</span> wrote:<br></div></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div><div class=3D"h5"><div dir=3D"ltr">hi all,<di=
v>=C2=A0 =C2=A0 =C2=A0Does mount.cifs command includes in busybox package .=
 If so then it includes what package=C2=A0</div><div><br></div><div>PN=3D b=
usybox</div><div><br></div><div><br></div><div>PACKAGES =3D+ &quot;${PN}-ht=
tpd ${PN}-udhcpd ${PN}-udhcpc ${PN}-syslog ${PN}-mdev ${PN}-hwclock&quot;<b=
r></div><div><br></div><div>in which package cifs command include</div><div=
><br></div><div>If not does it includes in=C2=A0</div><div>utils-linux pack=
age</div><div><br></div><div>Thanks and regards</div><span><font color=3D"#=
888888"><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 vivek</div></font></span></div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div>

--001a114406145b05dc0520679ed6--
