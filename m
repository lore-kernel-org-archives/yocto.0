Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C29EE00B88; Wed, 21 May 2014 07:54:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.128.179 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ve0-f179.google.com (unknown [209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5DD6E00B6F
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 07:54:55 -0700 (PDT)
Received: by mail-ve0-f179.google.com with SMTP id oy12so2651023veb.38
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 07:54:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=E19P0VOnot5L6bHdw7QlahI0tA5q7M5BaYYSElVpejw=;
	b=foZroPfWi0e1+ZGyRYSrm+f7S22i1zFK+gauedSRvd8gkpXA9Onvo0sgqJH1jlBCjz
	8AaEJNjks98+M9ENX2hpNNFNZYtK4wE+UOvGKSUxVK+jrEYSgMdpXIkiZhMrUIJd3ec1
	h7MR60JM8JbAVTvCSFO0u8a1ZvL06uFI2szRD2dD4l913RVYcsW22QG+BiPJxwkh+CPM
	wFykLxY5rP87QVdI3OR7SYaL6Z0cR/bLMKSSfJFRSVi7e1KKTbHU95qI/MpFv9NQaRDX
	6pXBI1RdMZgp2wDThMDVafBSksIX+asqHMCgmx5YgI6GDdgUpLxB7YDx52bhpXGNge5P
	tZ7Q==
X-Gm-Message-State: ALoCoQms2cz2VzvXb0BznxqySH9hYkdag8wdbt5rIRGPYc5HL4t0V/uIRvmBNX4stsdIcKL0cCBC
MIME-Version: 1.0
X-Received: by 10.220.7.131 with SMTP id d3mr1118562vcd.45.1400684095229; Wed,
	21 May 2014 07:54:55 -0700 (PDT)
Received: by 10.52.243.73 with HTTP; Wed, 21 May 2014 07:54:55 -0700 (PDT)
In-Reply-To: <537C5B12.4030007@windriver.com>
References: <CAPhnLPC1zcDhDq51msiME4zyQq3hBx=24m016XY8J4e7_q3uiw@mail.gmail.com>
	<537C5B12.4030007@windriver.com>
Date: Wed, 21 May 2014 07:54:55 -0700
Message-ID: <CAPhnLPD23NfwMnG+PFyXjUmwaDcH70uUHDBwdDOZfQarUXwbLA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Yi Zhao <yi.zhao@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: Weekly build available
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
X-List-Received-Date: Wed, 21 May 2014 14:54:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Found an AB bug. I'll have weekly synced up in a moment and the AB
patched soon after. Give me 20 or so.

-b

On Wed, May 21, 2014 at 12:51 AM, Yi Zhao <yi.zhao@windriver.com> wrote:
> Hi Beth,
>
> Seems many artifacts are not copied to the publish directory. Would  you
> please check it ?
>
> Thanks,
> Yi
>
> =E4=BA=8E 2014=E5=B9=B405=E6=9C=8821=E6=97=A5 14:10, Flanagan, Elizabeth =
=E5=86=99=E9=81=93:
>
> http://autobuilder.yoctoproject.org/pub/nightly/20140520-2
>
> bitbake     ef2bf63e56b87e19d1a9059dd2d81a9a1a537254
> eclipse-poky-juno     26bfc407781aa185f244a47ba63120343cee4a37
> eclipse-poky-kepler     1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e
> meta-fsl-arm     3336ef362109eef14f9e73cdededb43caefedb2f
> meta-fsl-ppc     913fc371e9976cc95fc1b2ee2deb87efd13faafb
> meta-intel     cb0f5fbd614ec6a9052539416734ca1ab26a1892
> meta-minnow     7bdcd1140b729598bae6246a4bbc21c3950aadd8
> meta-qt3     3016129d90b7ac8517a5227d819f10ad417b5b45
> oecore     be0327b6a900be5434b6b1f08277faf2f65d5da8
> poky     8293f564685d0f587ab63a107285625dc4f98f1c
>
>



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

