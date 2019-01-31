Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71837E00D28; Thu, 31 Jan 2019 06:46:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f175.google.com (mail-it1-f175.google.com
	[209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4364E00D15
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 06:46:17 -0800 (PST)
Received: by mail-it1-f175.google.com with SMTP id g85so3984831ita.3
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 06:46:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=y4hbSrwidX0PdqDvVdthg3Oej9grk2cfBfh1x5OU6Q8=;
	b=UMV6F193KKBlQ0QxnMaFF7PGjThq+18PNHABoAivZhJTisG2eEENfmUTwlqphjhShs
	16M77LtO4R7IwaSPOES/1ZkDROU5ZO06Wefr+1gcaQLsqzjnanX/ChZAEhh7OCdBPgQN
	oVyRe2hhhJVhNeTb0zKEWHxuwf8wuSS7azA9kf35gC1qrkXKrWsslL3K15l1Tf7ZLqkQ
	YU9IVYV7jYz5O3OoeiGugu+VUhWCFx+QVb9ozMdHkN0fzUpkEJterMVyIk++YyQVEzl6
	OLPsxe+PWNNTMap6xf13WxNlFWcOiMxPdtgmbqe9DVfg/cuXuLYGWHh8eRPRMh7d0Pdi
	QAzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=y4hbSrwidX0PdqDvVdthg3Oej9grk2cfBfh1x5OU6Q8=;
	b=A5UsA8EkdzRoODQNs1ak3YylZQif3DA5JVX9tgCAThA/L4ZxiI4PBfMRFY/04yo+/y
	BdXIK3OOoz+E1NfwE8O37Z7t2CPCpsbiIwqxfa0UVIqdD3hmCUv1S/8ea6CqDfXaj8bC
	HbP7qWwQSZw0Qx80Z579VC83/DjPS3bfbvCUhNdCKOueycYHZQFIAjn+kjApumNIfQ4C
	fVzXOFSZgDyDX77UbFQxmYkrLZY/at2nguSZAMBONlH+aeKu+xN72OobcWykmRHlKDLs
	+wuLuR+SG/QfTxcKPglWrrRjQVpGIWWK5jSFpjdkzhLh7RYYx0eHTUE1EZq+FqmV+S/r
	dyAA==
X-Gm-Message-State: AHQUAua6eOpYFg+94pRv95LzW5LGXRQnntOQMYQCk4cWsmyysinHGPTv
	/DQjTArkLHjL+iSxX2rHeC9ljeCU3Fk/R89eN5WC6Umz
X-Google-Smtp-Source: AHgI3IaFm69HWnDmLn3McLbscpw2MWsUNujHRyGytB/1a0YS+sjXflqSj4q+hTO9IthRtm69Z+XeLNXc1WfUNsVyZqs=
X-Received: by 2002:a24:8e43:: with SMTP id h64mr7078404ite.26.1548945977096; 
	Thu, 31 Jan 2019 06:46:17 -0800 (PST)
MIME-Version: 1.0
References: <7289CA52-0B42-4481-93B7-350AE353DC1C@yellowtec.com>
	<CAJTo0LY=A+4CRLoQnxyOYz-=UkbUOxd=ax7FRRDSM1vXXcDX0w@mail.gmail.com>
	<A829632F-9B64-4A3C-B259-C33CC5F8950C@yellowtec.com>
In-Reply-To: <A829632F-9B64-4A3C-B259-C33CC5F8950C@yellowtec.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 31 Jan 2019 14:46:06 +0000
Message-ID: <CAJTo0La9Fu3xjykguaNQxwCtzcOBazBLzxPW=85x8qJOqCAGoA@mail.gmail.com>
To: David Zimmermann <dzimmermann@yellowtec.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: How to archive only packages contained in a certain image
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
X-List-Received-Date: Thu, 31 Jan 2019 14:46:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please remember to keep the list on CC.

The reason is that those recipes are built for the target so they'll
be archived, the archiver doesn't distinguish what recipes go into
what image.

It's relatively simple to filter the list after the build if you want
to produce just what is in a specific image, take the image manifest
and use oe-pkgdata-util to turn the package names into recipes.

Ross

On Thu, 31 Jan 2019 at 14:01, David Zimmermann
<dzimmermann@yellowtec.com> wrote:
>
> Hi Ross,
>
> and thanks for your reply.
> I do bake an image based on core-image-minimal with additional packages l=
ike openssh and qt (-base, -declarative, -quickcontrols).
> My folder =E2=80=99tmp/deploy/sources/arm-poky-linux-gnueabi=E2=80=99 e.g=
. contains:
> perl, pulseaudio and python
>
> Even though those might be dependencies I inherited by other recipes - py=
thon e.g. is not contained / will be installed to my image.
> As a countercheck I see what licenses will be placed in the image (COPY_L=
IC_DIRS =3D 1 && COPY_LIC_MANIFEST =3D 1) which reflects the limited number=
 of packages I do expect.
>
> Regards,
> David
>
> > Am 31.01.2019 um 11:11 schrieb Burton, Ross <ross.burton@intel.com>:
> >
> > Does it not just contain the packages used to build the entire image,
> > so build-time dependents.  Can you give an example of a recipe that is
> > archived but shouldn't be?
> >
> > Ross
> >
> > On Thu, 31 Jan 2019 at 08:46, David Zimmermann
> > <dzimmermann@yellowtec.com> wrote:
> >>
> >> Hi List,
> >>
> >> I use Yocto Krogoth and the following configuration for the archiver:
> >>
> >> INHERIT +=3D =E2=80=9Earchiver=E2=80=9C
> >> COPYLEFT_RECIPE_TYPES =3D =E2=80=99target=E2=80=99
> >>
> >> But the =E2=80=9Atmp/deploy/sources/=E2=80=A6/=E2=80=9A folder for my =
target architecture contains much more packages then those =E2=80=9Aused=E2=
=80=98 to build my image.
> >> Is there a way to extract / archive / isolate only those package sourc=
es used for a certain image (kernel + rootfs) ?
> >>
> >> Thanks for your help,
> >> David
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
>

