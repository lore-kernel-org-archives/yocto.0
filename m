Return-Path: <me@padamj.com>
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E399E004DD
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2014 05:53:32 -0800 (PST)
Received: by mail-pa0-f43.google.com with SMTP id rd3so4457286pab.2
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2014 05:53:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:content-type:mime-version:subject:from
	:in-reply-to:date:cc:content-transfer-encoding:message-id:references
	:to; bh=ZTX+q5BS/duKrEWCnCZqjoPUyimABUgPxtQ7mdblaBY=;
	b=QHVaPFhlxo/ttz47sdAioaB+0fcommGHiI12/Yxst9y/fk7mRntw9U5IgUjQQZqbuZ
	qGZd+pS6sOPOcgk57U0FG06iipRyzmliLbbWkHexdB7/2v6Z2WLVAWmdUqMMj3G7d6sm
	DM6XmYvi0tbZGnXWM1GzN4ccp8Eyf4KMooXHfO+Gr8GCfriPvLJsoSaiGKuVx6qVqp+r
	HsTjuyaEyYH2O7TxUWm57XuoqsmbpZqQgV6tF0jCv/SCSXyXpoO+BbRwzAYNhRVWrStP
	UQDcAKY3yZdc5IrUw8j//AxgiViQy2aHviikr1Ml/cmihcjgqLV6HnfS8NWIxt0jkJfx
	6Twg==
X-Gm-Message-State: ALoCoQm6c3/oximQy7hX6rLrlID83GFVKxe+hUEaIh+C6VhbI7u1RHtgzTpInxgNsRTCvGN3DDKQ
X-Received: by 10.66.27.72 with SMTP id r8mr20752896pag.62.1391176412168;
	Fri, 31 Jan 2014 05:53:32 -0800 (PST)
Received: from [172.16.1.4] ([103.25.205.2])
	by mx.google.com with ESMTPSA id c7sm27886879pbt.0.2014.01.31.05.53.28
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 31 Jan 2014 05:53:30 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.1 \(1827\))
From: "Padam J. Singh" <me@padamj.com>
In-Reply-To: <CAJTo0LZ-RgJw+x1C5MmmOhUm1Pd-TdYoiZgABPOrESD876aoLg@mail.gmail.com>
Date: Fri, 31 Jan 2014 19:23:24 +0530
Message-Id: <0268212B-3E3E-4B1D-93EC-F0619C6EA499@padamj.com>
References: <05301278-AC33-4DBC-A381-DE2F5CB1E73B@padamj.com>
	<CAJTo0LZ-RgJw+x1C5MmmOhUm1Pd-TdYoiZgABPOrESD876aoLg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.1827)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help with ipset bitbake files
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
X-List-Received-Date: Fri, 31 Jan 2014 13:53:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hello Ross,

Thanks for the help!

I was able to see that both the images/ and packages-split/ipset had the =
binary. The root_fs does not have this file. The building of final image =
shows that the ipset rpm is being installed.=20

I have added ipset to the top-level image :
IMAGE_INSTALL +=3D "ipset"

Any clues?

Thanks,
Padam

On 31-Jan-2014, at 17:26 , Burton, Ross <ross.burton@intel.com> wrote:

> On 31 January 2014 11:45, Padam J.Singh <me@padamj.com> wrote:
>> When executing this recipe, all steps completes OK. However, the =
compiled
>> binaries are not included in the final RPMs or the final images.
>=20
> If you include the output of "find" in both image/ and packages-split/
> then it would be possible to debug this.
>=20
> FWIW, FILES_${PN} already includes ${sbindir}/*, so your assignment
> isn't achieving anything.  Also note that your second EXTRA_OECONF
> line is overwriting the first.
>=20
> Ross


