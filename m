Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f50.google.com (mail-vb0-f50.google.com
	[209.85.212.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8C35E0140A
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 11:55:09 -0700 (PDT)
Received: by mail-vb0-f50.google.com with SMTP id w15so1541150vbb.9
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 11:55:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=dBzq85KyPcUPQJXYVO3Qb2OrifX7r9/e66eyL0unHG0=;
	b=ibVDNptDQtHnqEAh9C9vWmjiBBHVWmMkmAuMx9W8Zm8dGTQbnOo/89dt/EOSizSOFX
	ky1DMNgOu9ifjYxGUePwWY9eKXIZWyd4Vwo82TeNAtnvwKLEcOo/FNOOcsVM+aUKeFuc
	hU95AW/OMAochrp7jt+Nc+oBk/tCXSLPrUfZ8Sp86AaLr/MmMSDwhAcjGsjRqSiLjhqY
	1wIaqHe8OqXmqVcJmlTIh9gsnJ3oxXcmzFZ/9hJtWt1kgkEH8x2f9VnjbVsi9/0CnpDz
	Q+Ig69QT6jOkKxBytGwpNUn9AKPM6+CblGUS1e/5bbCajqK1xml69JEm4Qy8aEcVAJUg
	pvbQ==
X-Received: by 10.52.108.10 with SMTP id hg10mr4945721vdb.34.1366224909017;
	Wed, 17 Apr 2013 11:55:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Wed, 17 Apr 2013 11:54:48 -0700 (PDT)
In-Reply-To: <CAFMfyz+F292KQyQBBV7Oyu_q+BAj0F=gBPQqzE6EEDKk347FMQ@mail.gmail.com>
References: <CAFMfyzJJY0hFGXimgdVwzp8i58PnXPnAUyKH_bk9DU25FXVjiw@mail.gmail.com>
	<CAJTo0LbUfNkkgeM9HNN4pE6n-tMyMJY9_4_Ns5BTie91=Qy4HQ@mail.gmail.com>
	<CAFMfyzKZNic47o-x83EZu5ueu7imZE9ZWCtYGsPu+J-0oqE2qQ@mail.gmail.com>
	<CAJTo0LZr0s1tp6V0_3W5odWmCOzyRtU4_E92OL8omtf9GBGTPA@mail.gmail.com>
	<CAFMfyz+F292KQyQBBV7Oyu_q+BAj0F=gBPQqzE6EEDKk347FMQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 17 Apr 2013 19:54:48 +0100
Message-ID: <CAJTo0Laj1w=q5NSq+zpZufLib8gs2qOKkzQi2syVpjep13ML_Q@mail.gmail.com>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
X-Gm-Message-State: ALoCoQlY1U9Na7ZmgkEnbFuGKSY5Pe0wSxpvft1O/UIkg1xI7GXEFlnj9nt/KVY61Bizk9oP7XEv
Cc: yocto@yoctoproject.org
Subject: Re: Adding prebuilt binaries to /usr/bin on rootfs
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
X-List-Received-Date: Wed, 17 Apr 2013 18:55:10 -0000
Content-Type: text/plain; charset=UTF-8

On 17 April 2013 19:10, Satya Swaroop Damarla <swaroop.damarla@gmail.com> wrote:
> If I dont avoid this error.. I cant build the rootfilesystem....

Hopefully someone else will respond who knows how to handle that problem.

Ross

