Return-Path: <gada.kashyap@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7086E00BE0; Wed,  4 Jun 2014 23:39:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gada.kashyap[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
Received: from mail-yh0-f52.google.com (mail-yh0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E483E00B74
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 23:39:30 -0700 (PDT)
Received: by mail-yh0-f52.google.com with SMTP id z6so470951yhz.39
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 23:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=bjCzjj4ZyG/QuQ+zdzKWaz8BovbnMwK/AsajBLnaxok=;
	b=GwT8bAqJHegJKu7TUbbLv8tm0QM8UyJ7YGFoyDr8IZbF5PlM5E0pQFa6vCEvRIe/y0
	v+qx9ZBM6l5RuD6d7haFnf0Gas4ih1fpbr91n/DYIzbgdBcuT0XD9n3g3dHraJr4q7mC
	2R3s2YisOo2vhAtODv3jMLGe9+mKpI78fd/mTeklUs+Is5FBhSeOQyNFaikvNvXMenlV
	jEdxtmF2R70W9SSKz4J796tCX9pkNT79/EN6lhO8VCthQmzyNcn23tLCdipNZqSKEb+r
	GhzLqAiOS5nfBRlup1ubeoMQlQ4Wpe1c+65hJdzH0+vo0Iwb2C89clDVkv3TS454QZ0F
	KA3Q==
MIME-Version: 1.0
X-Received: by 10.236.70.33 with SMTP id o21mr31599157yhd.147.1401950370338;
	Wed, 04 Jun 2014 23:39:30 -0700 (PDT)
Received: by 10.170.143.138 with HTTP; Wed, 4 Jun 2014 23:39:30 -0700 (PDT)
In-Reply-To: <CAJTo0Lad-n0Jv1u313OLhRBUWkoVrMGFoC4W0Wqjhw2M5wv6sw@mail.gmail.com>
References: <CANJXcUap4aox3bhkxzq+EqTtZHokfMX6cqaao5o0oLqqRE+4SA@mail.gmail.com>
	<CAJTo0LaNbvwf+2yEnPorOj81N4fSJwfYOxppqHcrX-hUHabBeA@mail.gmail.com>
	<CANJXcUaZm=4XeG4PDZwbaX+DtCo-fh+-aWWD49EsjOVmOuiN0Q@mail.gmail.com>
	<CANJXcUZOwrAuMjkt_RfBuSU3fyyDbay024qvf1KEfuPkOuJBew@mail.gmail.com>
	<CAJTo0Lbd257SN_SmwD=2MKYrw0LYODnhJoPhCPCSpdhxf7Nixw@mail.gmail.com>
	<CANJXcUYEdbSf1Fo5kZAw5GE+36fnz=EgzZojXxr44WdnCtC1Qg@mail.gmail.com>
	<CAJTo0LbKNeujMacRb-O3RHq5LfWZ01axS-TYTwhScjFnm-uu8g@mail.gmail.com>
	<CANJXcUasi1Pf3T4Zq5Fz7ExKq7Zm9FKCYERRLuaaLODuEZR0Hg@mail.gmail.com>
	<538E028D.2090200@linux.intel.com>
	<CANJXcUbN9_-+-JmDvSRE80zTzuGEQv-0DcM2hWuz7VC88ErwkQ@mail.gmail.com>
	<CAJTo0Lad-n0Jv1u313OLhRBUWkoVrMGFoC4W0Wqjhw2M5wv6sw@mail.gmail.com>
Date: Thu, 5 Jun 2014 12:09:30 +0530
Message-ID: <CANJXcUb3pteNM29xhV9cLJ4dy6bJsvXPVuREJYF0Ww3NHtBZTA@mail.gmail.com>
From: Kashyap Gada <gada.kashyap@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Source Command Permission Denied
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
X-List-Received-Date: Thu, 05 Jun 2014 06:39:34 -0000
Content-Type: multipart/alternative; boundary=001a11c1ec24d25cee04fb110100

--001a11c1ec24d25cee04fb110100
Content-Type: text/plain; charset=UTF-8

Yes, I have already dropped my plan for continuing further on that setup. I
have got a new computer and started the complete process again.

Thanks for the help. :-)


On Thu, Jun 5, 2014 at 12:04 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On Thursday, 5 June 2014, Kashyap Gada <gada.kashyap@gmail.com> wrote:
>
>> Its a different ntfs partition. I mount it manually.
>>
>
> Using NTFS is certainly going to complicate things because the permissions
> model is different, can you use a Linux file system (such as ext4) instead
> of a Windows one?
>
> Ross
>

--001a11c1ec24d25cee04fb110100
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I have already dropped my plan for continuing further=
 on that setup. I have got a new computer and started the complete process =
again.=C2=A0<div><br></div><div>Thanks for the help. :-)</div></div><div cl=
ass=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Jun 5, 2014 at 12:04 PM, Burton,=
 Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">
<div class=3D"">On Thursday, 5 June 2014, Kashyap Gada &lt;<a href=3D"mailt=
o:gada.kashyap@gmail.com" target=3D"_blank">gada.kashyap@gmail.com</a>&gt; =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">

<div dir=3D"ltr">Its a different ntfs partition. I mount it manually.</div>=
</blockquote><div><br></div></div><div>Using NTFS is certainly going to com=
plicate things because the permissions model is different, can you use a Li=
nux file system (such as ext4)=C2=A0instead of a Windows one?=C2=A0</div>
<span class=3D"HOEnZb"><font color=3D"#888888">
<div><br></div><div>Ross</div>
</font></span></blockquote></div><br></div>

--001a11c1ec24d25cee04fb110100--
