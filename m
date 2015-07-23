Return-Path: <lenin.muthukumar@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE034E00927; Wed, 22 Jul 2015 22:33:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lenin.muthukumar[at]gmail.com)
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
	*      [209.85.160.171 listed in list.dnswl.org]
Received: from mail-yk0-f171.google.com (mail-yk0-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9771E008EC
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 22:33:05 -0700 (PDT)
Received: by ykdu72 with SMTP id u72so211244571ykd.2
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 22:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=q+FkesgyrfXU2DVXdX3DVloPSnmOibS6L6djS//XpFM=;
	b=wHhVv/V2NxcO2MUYIWKCnTG0J/lyxAjL4oAQ9iEonohKsdptEQoPoX+FgaTjQQfS2t
	nu+uRvZcRm9F54TLvau0saHhSve9ucTP+ZZ6kjIwXRrpBN9bmYH2yzFGQuYxbK+qv8pS
	2FTCA1weopOLMBXfCLJuUxCT03UrKnGZ9P5XPDwrm/jo1HISibdtDQYnuMqwbA7wzbpl
	l0qC8y9kzsO2SqH1mprdraAUy081YmfQlzGGW0z+ofm0DK/5R9+b5u4WCh7doSyNO+vs
	dJQsl3+63QxkhzMoizZdOVE0DmWoTb5x8s/flNr5V+ArnWLmUfwQwHVWY3wBsl4oyEnZ
	UQEw==
MIME-Version: 1.0
X-Received: by 10.170.120.197 with SMTP id m188mr6287029ykb.60.1437629585384; 
	Wed, 22 Jul 2015 22:33:05 -0700 (PDT)
Received: by 10.13.200.65 with HTTP; Wed, 22 Jul 2015 22:33:05 -0700 (PDT)
In-Reply-To: <55AD0E1E.2030805@linux.intel.com>
References: <CAO0HP3E2LNpv=buzdVJG_PcNCW2wSCmho6GRk5x_ScWnge39mw@mail.gmail.com>
	<55AD0E1E.2030805@linux.intel.com>
Date: Thu, 23 Jul 2015 11:03:05 +0530
Message-ID: <CAO0HP3FJS1gLB5+uwKSXd84XMuxz7AuUhbAePkROJGuz0m39VA@mail.gmail.com>
From: Lenin Muthu kumar <lenin.muthukumar@gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to add bluetooth "bluez4" to core image sato (valleyisland)
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
X-List-Received-Date: Thu, 23 Jul 2015 05:33:10 -0000
Content-Type: multipart/alternative; boundary=001a1137834cc16b40051b84389b

--001a1137834cc16b40051b84389b
Content-Type: text/plain; charset=UTF-8

Hi Leonardo,
                 i done as per you said but no changes in my image. And i
add the CORE_IMAGE_EXTRA_INSTALL = "bluze4" in build/conf/local.conf. As im
new to yocto image i dont know anything in depth and new to this platform.
so i need complete steps to implement bluethooth to my image.  Thanks in
advance.

On Mon, Jul 20, 2015 at 8:35 PM, Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> You can add recipes (packages) through CORE_IMAGE_EXTRA_INSTALL = "pkg 1
> pkg2 ...". Regarding the specific package you want (bluez4), it is not on
> master, so you may try older stable branches.
>
>
>
> On 07/20/2015 07:28 AM, Lenin Muthu kumar wrote:
>
>> Hi,
>>      i have created the image for atom E3800 processor (valleyisland -
>> core-image-sato). now i need to add bluetooth service to that image. i
>> need
>> a detailed steps how to do it. im expecting positive reply from you.
>> thanks
>> in advance.
>>
>>
>>
>>

--001a1137834cc16b40051b84389b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Leonardo,<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0i done as per you said but no changes in my image. And=
 i add the=C2=A0<span style=3D"font-size:12.8000001907349px">CORE_IMAGE_EXT=
RA_INSTALL =3D &quot;bluze4&quot; in build/conf/local.conf. As im new to yo=
cto image i dont know anything in depth and new to this platform. so i need=
 complete steps to implement bluethooth to my image.=C2=A0 Thanks in advanc=
e.</span></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Jul 20, 2015 at 8:35 PM, Leonardo Sandoval <span dir=3D"ltr">&l=
t;<a href=3D"mailto:leonardo.sandoval.gonzalez@linux.intel.com" target=3D"_=
blank">leonardo.sandoval.gonzalez@linux.intel.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">You can add recipes (packages) through CORE_=
IMAGE_EXTRA_INSTALL =3D &quot;pkg 1 pkg2 ...&quot;. Regarding the specific =
package you want (bluez4), it is not on master, so you may try older stable=
 branches.<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<br>
On 07/20/2015 07:28 AM, Lenin Muthu kumar wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi,<br>
=C2=A0 =C2=A0 =C2=A0i have created the image for atom E3800 processor (vall=
eyisland -<br>
core-image-sato). now i need to add bluetooth service to that image. i need=
<br>
a detailed steps how to do it. im expecting positive reply from you. thanks=
<br>
in advance.<br>
<br>
<br>
<br>
</blockquote>
</div></div></blockquote></div><br></div>

--001a1137834cc16b40051b84389b--
