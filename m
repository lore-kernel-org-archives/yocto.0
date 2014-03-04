Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC6FDE0097D
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 15:07:10 -0800 (PST)
Received: by mail-ie0-f171.google.com with SMTP id ar20so271405iec.2
	for <yocto@yoctoproject.org>; Tue, 04 Mar 2014 15:07:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=hI/O31yM3XW7j3sU3QwuPR6J2yj/2DNIBO49/tBhITM=;
	b=FexGnkW+Rz9ZCtUrybMv9dHcF+g8IzZxo7FR0iVdcAqW7Ny+OrRmD1MwUW83/O/3fP
	YlgBfujV/NU7a5DYH4Q0jFKcdqZmgv0OGqNQ3B7H4EpUJA2lDjVhKTJXL6ficFdPE9Vp
	zMDh+h7k5G6UdXyWfSkoaO+1Nr9voYNtUkYcPGkHRIakmnET+y5jAegFM+Zo7oUM9DHo
	q8zhppaqgvaTzbkZr5O1tB91OpizAK7SyA1mkalp3eZRXLcFzQn6d6oF8BhbMmfA3zAS
	6vUpoYhOoORahQ8kcKWgB52lXJyD63BeD1jRc2oYL8MVgv5WtGtD/kjfiC8k8jhid/vn
	Rmtg==
X-Received: by 10.50.60.103 with SMTP id g7mr31457365igr.20.1393974429608;
	Tue, 04 Mar 2014 15:07:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.224.136 with HTTP; Tue, 4 Mar 2014 15:06:39 -0800 (PST)
In-Reply-To: <CAK18fxF3frJ-8f66maAOQssO+jWxeQzvtQSN9+ReJN0Np8KrFg@mail.gmail.com>
References: <1393581239-5526-1-git-send-email-s.mennetrier@innotis.org>
	<CABgO3_MuNG3BRko9w=uXgOJW9aFrGKUeYdNbtskSNNxdpk6g8g@mail.gmail.com>
	<CAMKF1soRRrcaW2o=Ebw5nm1Jc-222QKwTU8OwW_VbdisGTQJ8g@mail.gmail.com>
	<CAK18fxF3frJ-8f66maAOQssO+jWxeQzvtQSN9+ReJN0Np8KrFg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 4 Mar 2014 15:06:39 -0800
Message-ID: <CAMKF1spdGtLfkhTXZeZkAKjCFJAHGDDfa0ZytWMZwuoRquQ_UA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][for-dora][PATCH] Installed fonts directory in the default location needed by omxplayer
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
X-List-Received-Date: Tue, 04 Mar 2014 23:07:11 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 4, 2014 at 2:51 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Why exactly? meta-rpi is using yocto mailinglist.

Oh didnt notice if this was a meta-rpi specific patch, but if it is
then ml is ok

