Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F3C5E00B51; Wed, 31 May 2017 02:55:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jacobchen110[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.178 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f178.google.com (mail-qt0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D381E00B3D
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 02:55:13 -0700 (PDT)
Received: by mail-qt0-f178.google.com with SMTP id c13so7849492qtc.1
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 02:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ZEnYwjzZ/2fRgvBnHFfAm9MJPWPJ2wvuQ88zarBNHHY=;
	b=QPgu67wQFR+aYKBYGeeZDRGvxTaEShxEl6zUIvw8ujNsismQEaIWRqL/e5Huch1SAg
	vdQKn7FA4GRgOMrpzli2G13oUn7WrhV6ACmyf2HRRgVQ7nAGg19pDvDbV9G7Jwx4Veg9
	f7mAHymxoFiDYI86s7mymOsy4+HBoyevKlcihcJ9agJ/J9KMOtgNJZSBB2UY9hTe+80/
	+Hy4IoIp4bSkxDbSsq9VpUcdqjYgaiiXh21ppvMZbrouzPD/GaNZiJNGe3/QR7LsV6+Y
	ClLm7dJKjEjA42V1R0tjDSCeU2mtqrSdhzYEcPo20uPWKkOFL19bL/f5j3a/cDjKP8uB
	v6Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ZEnYwjzZ/2fRgvBnHFfAm9MJPWPJ2wvuQ88zarBNHHY=;
	b=nSXR5aNorir+Y3ovmCJP/88MWiulB+BkFJvNss1v+lKgFEskLEpt4IzBYifkbQXpQe
	vgyaAkv2i+hqT0+LYmXyHAMZhwaJuh2Rbrmm0mhxfA6EHU7D7SrB1oid2kFn6HOBzHfw
	AGG23Uh1xGcO25hsUHbDLNkdgv8BZqFDtHHVu5nxJXMrDo6gCSu62CDPHJftBdQ12GNz
	aSU7KV79aZkdr9YKJq9xnd3kc6pCYjT8ttYsGV7CFQTr1qa1Pu41MlGjbxjhV6Bec4KM
	Tw+pomWzPn+yE52/+QdRcFRp9X5DedWbInWM86rTqPLR3Y3Y6voda4ura8WKJB8Ar/9r
	SpUA==
X-Gm-Message-State: AODbwcCMpOwzKP4d9dHUwPQFMLh1T3CZ2JdAC8Wbvme7OCnrkpkrwTQf
	FOZbTpUGnjtgpIgrszB3S828ZrcDnKTv
X-Received: by 10.200.43.33 with SMTP id 30mr29835093qtu.210.1496224512761;
	Wed, 31 May 2017 02:55:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.97.5 with HTTP; Wed, 31 May 2017 02:55:12 -0700 (PDT)
From: Jacob Chen <jacobchen110@gmail.com>
Date: Wed, 31 May 2017 17:55:12 +0800
Message-ID: <CAFLEztSgVYjczaSdN7xNqFXBN5kv52MmUTU8yjTCqKsU68VS1g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: rdepend for a kernel recipe
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
X-List-Received-Date: Wed, 31 May 2017 09:55:17 -0000
Content-Type: text/plain; charset="UTF-8"

Hi all,

I have two recipes.

kernel :
https://github.com/rockchip-linux/meta-rockchip/blob/morty/recipes-kernel/linux/linux-mainline_4.11.bb
and kernel module:
https://github.com/rockchip-linux/meta-rockchip/blob/morty/recipes-kernel/linux-extra/rockchip-forwardports_4.11.bb

I want that if I set "PREFERRED_PROVIDER_virtual / kernel" to
"linux-mainline", then  "rockchip-forwardports" will be automatically
installed in my rootfs.

I have set  "RDEPENDS_${PN} += "rockchip-forwardports"" in kernel, but
it didn't work. How can I slove it?

Are there some ways i can do in kernel recipe or image recipe?

