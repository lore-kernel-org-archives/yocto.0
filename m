Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABDADE00BBF; Tue, 30 Oct 2018 14:13:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E5B2E0097C
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 14:13:17 -0700 (PDT)
Received: by mail-qt1-f194.google.com with SMTP id a10-v6so15327031qtp.2
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 14:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=8lKPJ5R6ser4OAqYrWUsbefT4N30Tl5NrU7htDh5dcQ=;
	b=HxQKG/vFRPcYnlFmcuQaV+Cd5Q/QkIYxwClJXx66R+0/7E3PeiA8cV6jY0omSQuENL
	gDFzM7xoeB2e+Hxw1+sM+qJ0JaSrW6BKn9c4lHfr4UkjhekbQRG3fJh+NUVHsnVSAtOZ
	XZSmyoVyE/QyNZjXskx+yxjBoJsVNRTCaGzJKnSZhXzYcu0SYXSbpuatUKJpQlBxu3mZ
	bCQXTvxhJoFu0ms61h9//ItZRrGoxeK7RVBMcSTUR92sNW9ebkxpKw98zAobVmpJyady
	PcGpClOPuTuc6dm/W+vbR3YqIo4O66mNmqJ52rGk8MPOu3zu+XIBZP1ZR2ON1x2rFcPp
	BB3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=8lKPJ5R6ser4OAqYrWUsbefT4N30Tl5NrU7htDh5dcQ=;
	b=qMDz2VFU6hE6qgPuY0Y8z5I0guAnG8R3ZjG97sv4X7B2Cy+VqklR0Y4ETyP6vDsY2f
	lBJI1mUfWwJoJPkEDm6uesMqXxFXgrArT+tHaqhwYkVFhX7wJQSfpKc/oQp/ECpWxww4
	9r1WIG3H1nfeL2IyiuMWbbZkfdZFrYpIg4buF2CnBiiu31IQgXMez1suqr/zKhRKZJVc
	bqmHqYULxDkIaW1g7iXjjkCZ5sneHipma64h4WV3g8De8GYdawcNumpCnlxz4FuuUbTJ
	RVM7AFeZN0YYmCjs7Budfs29DoIZ1RkizkE36rdlK8zS8ocPvnMcVfdccawoFTDmauo+
	MlyQ==
X-Gm-Message-State: AGRZ1gLJ+21nqTdYSsS0Cz/mfv3kb3CjkbjSJyohqhMUG6Xd82LBg9hP
	9+3k2sflcoVuaVbSNno1yVs3hMdRvznNHWtlXVoaRE7l
X-Google-Smtp-Source: AJdET5c01PEoIX6Do6YUt+I3b7cBji33ZZ7VMO0f3aPLJk2gGS23jnOdT6mmzrQFNArjNKgJt5+TGBz3uoGMLTd0Wjo=
X-Received: by 2002:a0c:93e2:: with SMTP id g31mr343358qvg.194.1540933996377; 
	Tue, 30 Oct 2018 14:13:16 -0700 (PDT)
MIME-Version: 1.0
References: <AM5PR0602MB2802B8C31D3325291398D156B1F00@AM5PR0602MB2802.eurprd06.prod.outlook.com>
In-Reply-To: <AM5PR0602MB2802B8C31D3325291398D156B1F00@AM5PR0602MB2802.eurprd06.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 30 Oct 2018 15:12:50 -0600
Message-ID: <CAMKF1sqGuse0=zEFa7bjHdE0V+YX+AgVEc3-akALDkPENnRFBw@mail.gmail.com>
To: radoslaw.chmielarz@leica-geosystems.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Moving to Yocto 2.3 - recipe-specific sysroots - improving the documentation
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
X-List-Received-Date: Tue, 30 Oct 2018 21:13:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 30, 2018 at 1:06 AM CHMIELARZ Radoslaw
<radoslaw.chmielarz@leica-geosystems.com> wrote:
>
> Hi all,
>
>
>
> I think the documentation on migrating between Yocto 2.2 and 2.3 needs mo=
re clarification as to how did the sysroots have changed.
>
>
>
> I wanted to migrate our build system from 2.2 to 2.5 and one package in p=
articular has caused me a day worth of scratching my head and trying differ=
ent ideas.
>
> We have a custom recipe for openssh-server which among other things had a=
 line:
>
> EXTRA_OECONF +=3D "--with-ssl-dir=3D${STAGING_DIR}/${MACHINE}/usr/local/o=
penssl-1.0"
>
>
>
> This is due the fact that openssl-1.0 is being installed to /usr/local/op=
enssl-1.0.
>
>
>
> Now when trying to migrate I have noticed that STAGING_DIR is not populat=
ed any more and this is clearly explained by the documentation. What is not=
 explained however is how to get the files from other recipes. The document=
ation simply states that each recipe has its own staging directory. Hence w=
hat I have tried to is steer this directory to the staging directory of ope=
nssl-1.0.
>
>
>
> Of course the real solution is that openssh-server recipe installs header=
 files of all packages in DEPENDS into openssh-server STAGING_DIR_TARGET (i=
n my case, could be other STAGING_* directories apart from STAGING_DIR whic=
h is empty right now) and the simple solution was to change the above line =
to:
>
> EXTRA_OECONF +=3D "--with-ssl-dir=3D${STAGING_DIR_TARGET}/usr/local/opens=
sl-1.0"
>
>
>
> And thus to save other people time I think it would be best to add anothe=
r point to the documentation (https://www.yoctoproject.org/docs/2.5.1/ref-m=
anual/ref-manual.html#migration-2.3-recipe-specific-sysroots)
>
> =E2=80=9CConsider the following:
>
> [..]
>
> Examine the recipes that use STAGING_DIR: STAGING_DIR is a shared directo=
ry not populated any more. Instead if You want to use files from another re=
cipe in Your recipe include that recipe in DEPENDS variable which will copy=
 the files from another recipe into Your recipe=E2=80=99s staging directori=
es. Now You can refer to those files using STAGING_DIR* pointing to Your re=
cipe=E2=80=99s staging directories. For example instead of:
>
> EXTRA_OECONF +=3D "--with-ssl-dir=3D${STAGING_DIR}/${MACHINE}/usr/local/o=
penssl-1.0"
>
>                 Write the following:
>
>                                DEPENDS +=3D =E2=80=9Copenssl-1.0=E2=80=9D
>
> EXTRA_OECONF +=3D "--with-ssl-dir=3D${STAGING_DIR_TARGET}/usr/local/opens=
sl-1.0"
>
> =E2=80=9C
>
>
>
> Of course this can be made more general and a precaution could be added t=
hat this is taken care of by most of the packages. Maybe in my case it coul=
d also be changed to be automatic but this I haven=E2=80=99t yet explored.

Thanks for this and I think it would be good if you are willing to add
it to How do I section of wiki here
https://wiki.yoctoproject.org/wiki/How_do_I


>
>
>
> Cheers,
>
> Radek Chmielarz
>
> Leica Geosystems AG
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

