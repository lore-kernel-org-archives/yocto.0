Return-Path: <krussell7711@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9E71E00912; Fri, 12 Aug 2016 08:34:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bkylerussell[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.194 listed in list.dnswl.org]
Received: from mail-yw0-f194.google.com (mail-yw0-f194.google.com
	[209.85.161.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2DB8E0043B
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2016 08:34:52 -0700 (PDT)
Received: by mail-yw0-f194.google.com with SMTP id j12so1255036ywb.1
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2016 08:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=4zLiHdk08A85POLXGKg+JbxlPOPWfx80TfLugh/Znbc=;
	b=qU5rr+DZnuN/YVH+hVbrp4PhZcLUxI3ff23uQgRrFbRzbbDtqWFz7j1q2QgoA91sDi
	pjrrt6PnvPRdyk9OflJx8BIq3DVXzE+g15naNKAep6X2FNhVKWoTrMhasi+flSSrdbqA
	ED8P3KyD6hv8K2R3hsZf48PvPfOMqB8QhFuWDR7rwkQSHU1MIT7T6wByxSX4CuAvv7rp
	1Oej+16NxFRlImlceoAZciYvk79Vh3nPkAwzys0FiRwT2CeAmNIq1YggcaM8V3hSnVPI
	yF6yNv+GpqqWSGggTTQKsXGAdM3feRPoFEKl1YUzP0M2jxWMqPAM8MUvws4JLPgm2UQq
	i36Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=4zLiHdk08A85POLXGKg+JbxlPOPWfx80TfLugh/Znbc=;
	b=EmxOTV0BDKMPCtRyC0tw/GwOh5SJuJug3iXWHzU+vVkojzA92ghTjXEVHIy+abdzxo
	FR4XMSmDqsqFxVPgYbFZXdTj/P5A15OmZxQknvp0OxLJeuc3DtH5ys380b+BqlkN/1v3
	V9d0Pny4ZEGkRKMSEc1fxm8x+f8SoPyGOZpQKBzSy7i1izXDTLNQABzmKa2GwMeym3uB
	EMy8xJahdzHhB2xfXCmeMdWIWKJdObR9NmI4r++LvxUbuj+73Q966mzgX61QQ3ZQ1Y6C
	yqkJTis5s2EtDShCv52zxhfihC6F3HO74TfrFtF9sw93dLxTtSAQsVkTurY8051qZFUa
	lqgg==
X-Gm-Message-State: AEkoouu53m1hfPpI1F0sd/BJ00O+P7VIXP46bNP6rxRzgho8coGc5QXAecgw9aAASoW+xl1xdZ1vkcQR39Hn9w==
X-Received: by 10.13.241.199 with SMTP id a190mr10365748ywf.141.1471016091676; 
	Fri, 12 Aug 2016 08:34:51 -0700 (PDT)
MIME-Version: 1.0
Sender: krussell7711@gmail.com
Received: by 10.129.132.20 with HTTP; Fri, 12 Aug 2016 08:34:31 -0700 (PDT)
In-Reply-To: <CAJTo0LYJAw_it7YLJKc5ugULeFh_UFmWfXyaHReH36WEVY4v8g@mail.gmail.com>
References: <1470052915-2839-1-git-send-email-bkylerussell@gmail.com>
	<CAJTo0LZKE9cf8i5x2Cz7AjT3ve_BVFTcMbLhHa8Ys+bkaz+BVA@mail.gmail.com>
	<CAFrQVPPN3iVVakjYLGOBnP=rc5oeO40SfEV5s6tyE4jiN9Z_eA@mail.gmail.com>
	<CAMKF1sqbt7sqTjys_B5+vfXhNoXzzQLSL_tO3j_Xb7Dq-FZh3g@mail.gmail.com>
	<CAFrQVPNSvxoiyZ9Y7UZZhArG3VLT5CPfOUcdd0fgqrJPL-_nDQ@mail.gmail.com>
	<CAJTo0LYJAw_it7YLJKc5ugULeFh_UFmWfXyaHReH36WEVY4v8g@mail.gmail.com>
From: Kyle Russell <bkylerussell@gmail.com>
Date: Fri, 12 Aug 2016 11:34:31 -0400
X-Google-Sender-Auth: BisgWK_AXG4mfWazmHGGtEMl3r4
Message-ID: <CAFrQVPMPEtuBpCw0suxBBXe2FzKdkzGmgRKn2XCRCOWYspGm1g@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta][PATCH v2] python-3.4-manifest: Add some missing RDEPENDS
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
X-List-Received-Date: Fri, 12 Aug 2016 15:34:53 -0000
Content-Type: multipart/alternative; boundary=94eb2c0327209a75670539e19fa1

--94eb2c0327209a75670539e19fa1
Content-Type: text/plain; charset=UTF-8

Ok, thanks!  Sorry about that, not sure what happened.

On Fri, Aug 12, 2016 at 10:00 AM, Burton, Ross <ross.burton@intel.com>
wrote:

>
> On 11 August 2016 at 22:14, Kyle Russell <bkylerussell@gmail.com> wrote:
>
>> In case anyone is interested, I posted an update for both the script and
>> .inc to openembedded-core (which now has master at python 3.5), but it
>> doesn't seem to have gone anywhere yet.
>>
>
> Sorry that got stalled because the patch was mangled by your mailer so I
> had to fix the patch by hand.  I've applied it to my staging branch, thanks.
>
> Ross
>

--94eb2c0327209a75670539e19fa1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok, thanks!=C2=A0 Sorry about that, not sure what happened=
.</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Au=
g 12, 2016 at 10:00 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_extra"><span class=3D""><br><div class=3D"gmail_quote">On 11 Augu=
st 2016 at 22:14, Kyle Russell <span dir=3D"ltr">&lt;<a href=3D"mailto:bkyl=
erussell@gmail.com" target=3D"_blank">bkylerussell@gmail.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">In case anyone i=
s interested, I posted an update for both the script and .inc to openembedd=
ed-core (which now has master at python 3.5), but it doesn&#39;t seem to ha=
ve gone anywhere yet.<div></div></div></blockquote></div><br></span>Sorry t=
hat got stalled because the patch was mangled by your mailer so I had to fi=
x the patch by hand.=C2=A0 I&#39;ve applied it to my staging branch, thanks=
.</div><span class=3D"HOEnZb"><font color=3D"#888888"><div class=3D"gmail_e=
xtra"><br></div><div class=3D"gmail_extra">Ross</div></font></span></div>
</blockquote></div><br></div>

--94eb2c0327209a75670539e19fa1--
