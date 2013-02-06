Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E8DDE00527
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2013 07:48:35 -0800 (PST)
Received: by mail-vc0-f170.google.com with SMTP id p16so947573vcq.15
	for <yocto@yoctoproject.org>; Wed, 06 Feb 2013 07:48:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=o3XvsXTsLtv/dKycgtdie71HfmmI3Xup700w7nF/a+M=;
	b=dcLSUr49XRyuJkLKyAowX5gp21MpuqZ24wtPdjN11TtFRZ+dSAM3WqwOuAxo1MEjyY
	H+qfYo/TbIEcdrFB1FISKfbFgs8Uf49JSJ13p0L4ezmBsq98gw7ibLEt0M6fOZPQgtVL
	/wROe093e6eynyY7SX+KrCt+k4gYgoQqXJtfdyrpOjVegvZWU8HomzterlPh2+R1hNbN
	T4I0IUOPg6bIJacbjRuaOp/Bj0lK4dMYZXs087C5fg2DFe0l0ugAYxSuDcq6a/U15GQP
	VsjEi+wQGpa6eRU4c0bXLQbedYAqYymIf3wYtDE+11ju57ULjkU9Z9eXBjXTBIFKz51Z
	eblQ==
X-Received: by 10.52.90.243 with SMTP id bz19mr24978877vdb.112.1360165714682; 
	Wed, 06 Feb 2013 07:48:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.95.131 with HTTP; Wed, 6 Feb 2013 07:48:14 -0800 (PST)
In-Reply-To: <5112797E.9010504@digi.com>
References: <5112797E.9010504@digi.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Feb 2013 15:48:14 +0000
Message-ID: <CAJTo0LYeNK8eEVX5_GV_s9AC40o9cbXdsEHh_M1h8-ZEhqBF-Q@mail.gmail.com>
To: Javier Viguera <javier.viguera@digi.com>
X-Gm-Message-State: ALoCoQm8BLEa9TEjB8itivy/Ay1pkmJnZBhzJLYwoN/iQR1kB2qceb6Mnf8hfWKQWLgCWR0Isav4
Cc: yocto@yoctoproject.org
Subject: Re: systemtap fetch failure on 'danny' (cherry-pick fix from master)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Feb 2013 15:48:35 -0000
Content-Type: text/plain; charset=UTF-8

On 6 February 2013 15:40, Javier Viguera <javier.viguera@digi.com> wrote:
> This seems to be fixed in 'master' branch:
>
> commit f3f4ac33ee7fa9cd35d06821fc3e26077303998a
> Author: Maxin B. John <Maxin.John@enea.com>
> Date:   Fri Dec 14 13:00:28 2012 +0100
>
>     Update the SRC_URI in systemtap recipe
>
>
> Could that commit be cherry-picked to 'danny'?

You'll be pleased to know it's in danny-next already, so should be
hitting danny in the next day or so.

Ross

