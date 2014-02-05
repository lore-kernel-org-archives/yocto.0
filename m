Return-Path: <ross.burton@intel.com>
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FDC8E0043F
	for <yocto@yoctoproject.org>; Wed,  5 Feb 2014 06:34:31 -0800 (PST)
Received: by mail-qc0-f181.google.com with SMTP id e9so688042qcy.26
	for <yocto@yoctoproject.org>; Wed, 05 Feb 2014 06:34:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=74UE5SrW4c51YXtHGR0q78Nbp15OTZMP+fTWdzHFTYE=;
	b=VPZfVqsIbEUb22lGaH06dGuLBbYLrfw34vCxJKksAgrDgDLQQEUIKOPViw2DrWGWAd
	TG2n1IfG5dRihV7i3XkZ4yFA98aRTWooPp7gFAh23DpTlOgBtx3DtIztnjWpRCAD5QVg
	It/MnjfXV+yNECFdLjPSxkmmOFcl9KXxfk1zNkb3nuXAReotF54um8Xq3Btits+e4a2f
	eqe9zJkF7hgM/HOiU+7DsNIy/2gVNhatNntQjOoe6LQYxinEfipoxKoV+9DrgwMvsFdv
	secNIoAfuOcaIKalw0caYRNYyHwurvvB0yfohTdlUAy4UBMEldg+bTMmzALwXMbGV5L3
	5jlQ==
X-Gm-Message-State: ALoCoQklCnmdOesSNJ2MzOxvX8KciV4zmU5f8eWXHjTFybUvmpdN0FV49xwtRkfpnIkwTchBPOgE
X-Received: by 10.140.81.74 with SMTP id e68mr2731439qgd.99.1391610870825;
	Wed, 05 Feb 2014 06:34:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.79 with HTTP; Wed, 5 Feb 2014 06:34:09 -0800 (PST)
In-Reply-To: <1ebdbe80eed846bea559f9b0988acd37@HERMES.RUSSOUND.com>
References: <1ebdbe80eed846bea559f9b0988acd37@HERMES.RUSSOUND.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 5 Feb 2014 14:34:09 +0000
Message-ID: <CAJTo0LY+bAU5n2VyXuhBepdKfK400t5D0g8RhqOCYcKbhzKHDQ@mail.gmail.com>
To: Brian Karcz <briank@russound.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Parallel builds with common shared state cache
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
X-List-Received-Date: Wed, 05 Feb 2014 14:34:32 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4 February 2014 18:03, Brian Karcz <briank@russound.com> wrote:
> I=E2=80=99m curious is there are any issues with using a common shared st=
ate cache
> directory, outside the build directory, for multiple different image buil=
ds
> that also might be running in parallel to each other? I=E2=80=99m in the =
process of
> setting up a new build server and wanted to make sure this wasn=E2=80=99t=
 an invalid
> configuration before proceeding.

I'm not positive that there are locks around the sstate cache
(although there arguably should be if there isn't), but the worst-case
scenario is that one build tries to extract a partial sstate archive,
fails because it's truncated, and does the build itself.  It's
probably safe enough: my personal AB shares a sstate between its own
builders and my own builds without any issues.

Ross

