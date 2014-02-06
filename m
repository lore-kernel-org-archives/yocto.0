Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80E92E00475;
	Thu,  6 Feb 2014 08:03:25 -0800 (PST)
Received: by mail-ve0-f182.google.com with SMTP id jy13so1691655veb.27
	for <multiple recipients>; Thu, 06 Feb 2014 08:03:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=VUWFXyRI0P5rqVaoaHUJCf6lhHH5schnT1bBHjd03kc=;
	b=mySt+Yn4sCxvffNxKfSJ9mdSB0YudzN6zZum3sPJccfvWRUtDik79J3syFaIgAY+zG
	1HGxRhfuX5Z3E2GpoKAMlOgPDcYkjwDarViOJ8SKBqo1v5E7EoZoBpKYBPNNRGPtF9kb
	RraupVH07ZHPI+J/2sQDMnO6EyPP+dX82quNXZOk63Z72Y2N5Wtcs1KDoq6bwQrV+3TO
	TBJLbcoPxb9S/4wyu3MSWOOfIj5Yacz4+yAcmLix1JTKY8V1lJbEvvXSuuIw7qO7BB4z
	eO46KtiodG736gefQVJd7GYzEh0b1UnwsBQR/mUKox9SRas+N9dyYwFpC/VVChQRyV/F
	TMjA==
X-Received: by 10.58.181.230 with SMTP id dz6mr1049087vec.35.1391702605028;
	Thu, 06 Feb 2014 08:03:25 -0800 (PST)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.239.135 with HTTP; Thu, 6 Feb 2014 08:02:00 -0800 (PST)
In-Reply-To: <CANwz6nx3WLC6b7jjFnNDCc6hXJtvRbPK5yw0pZ+sVJ8foX5HRQ@mail.gmail.com>
References: <CANwz6nx3WLC6b7jjFnNDCc6hXJtvRbPK5yw0pZ+sVJ8foX5HRQ@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Thu, 6 Feb 2014 16:02:00 +0000
X-Google-Sender-Auth: 4inzpn7P_VDhFvG25ipYovFnZC4
Message-ID: <CANyK_8f0gn31ebzO3q=mHEsC4biCtPsfnGdpfNhrERfMc+7pFA@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"meta-xilinx@yoctoproject.org" <meta-xilinx@yoctoproject.org>
Subject: Re: meta-oe x264
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
X-List-Received-Date: Thu, 06 Feb 2014 16:03:26 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 6 February 2014 15:22, Edward Vidal <vidal.develone@gmail.com> wrote:
> Hello All,
> In Dec 13 I used meta-oe on a dylan branch and x264 was included as part of
> meta-oe/meta-oe/recipes-multimedia/x264.

Looks like it's moved to oe-core:
http://layers.openembedded.org/layerindex/branch/dora/recipes/?q=x264

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

