Return-Path: <b.hutchman@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4984E00F5E; Tue,  2 Aug 2016 06:05:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (b.hutchman[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.181 listed in list.dnswl.org]
Received: from mail-yw0-f181.google.com (mail-yw0-f181.google.com
	[209.85.161.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67322E00F51
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2016 06:05:43 -0700 (PDT)
Received: by mail-yw0-f181.google.com with SMTP id j12so196752762ywb.2
	for <yocto@yoctoproject.org>; Tue, 02 Aug 2016 06:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=V6MwUI2SQQEKuIdfxyC+PRFg9iBz/cA8hQzSSQv860A=;
	b=GbDm5tIoyISMSqW6VVBUdit4juMtHEmoSKpisyZtDnWBLbYJhUEFsf3mD1GK2v9s8J
	w28WJayxjli33UGkn1kVkb6SOULQP3WVqPFDO7Kt8nuri2zKGNRDJQwD+K+nWI/RlZ5s
	xsFGuYEClPpEtw9aNLTgr8ARO53cJ314CY48VOSDlVLtF/ZjLFmNgRP2JewBlXB7wA+D
	eyyIGhgAuNBkfevUqEE4FED4vuoi72+9LBIMTrtK2Vhxri7WpJ8fvcCmfrY1q3K443LA
	wJVMOn/7tQTBe25hyhavgVL4hoq1snKcbBZy6zscrnFFKxos6+MTDsbk6eL2sY9DCiOy
	cE5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=V6MwUI2SQQEKuIdfxyC+PRFg9iBz/cA8hQzSSQv860A=;
	b=W+yS2d6aqGia4Pr1O6WCAL9d92zjXyd3/sdPM+/toH9S3fTycg2ZGueNfk0BeU5JNm
	NkipP07nQ0JRHkrzSlFM5g8W23ZnADxiI5AE7scfBmQRAOHLMxZKCmKpPqNjQHOMwcAG
	bIQoifXVmD+DA6cEht7C00XqXekYX9D9XbhoGWYZ0zTJVHJHIozOfrDSlPW8eU1/0JGS
	4AxcbfcM7xo5fsYAM0Tx9xJT2+78HiMbjqO1ysV5shAX4ty/n5Tp7/vIAo+z/I1Ea/35
	fbJl51nClQxtpxOf2Tbc9UPRUM1mSnpQ/jZVSAl6I952sIFpECACXtSwytovqT3q4G3C
	UjiQ==
X-Gm-Message-State: AEkoouuQxg6ipQZRah+QYqexQQ/OFwXDKik/ch8QBfZuwyShXMZg68oR1LnOSNdxo0GmD+xTijCGjVpSDroqiA==
X-Received: by 10.37.104.20 with SMTP id d20mr47908464ybc.59.1470143141752;
	Tue, 02 Aug 2016 06:05:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.130.134 with HTTP; Tue, 2 Aug 2016 06:05:41 -0700 (PDT)
In-Reply-To: <CAFZh4h_7X2toq-bynO=bw2g36s5cBAzrzzZkn9AGGMBneSZ_Mw@mail.gmail.com>
References: <CAFZh4h8HyfyfzX8m_jZWzUuOEJ4dnndxHjH67s9urxQVM5PKrw@mail.gmail.com>
	<CAFZh4h_h5mU9_dDRiu84p56y+x80_J85q=LjQsy=3DTZt4jw_Q@mail.gmail.com>
	<CAFZh4h820UUrUORaVcnvHa_4EpUhhFXdCTNco102hs9qytSz7w@mail.gmail.com>
	<CAFZh4h_7X2toq-bynO=bw2g36s5cBAzrzzZkn9AGGMBneSZ_Mw@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
Date: Tue, 2 Aug 2016 09:05:41 -0400
Message-ID: <CAFZh4h_FqEo3qCvv+4d0YbzuoDLOTeB57VEfMGU3ypvPXbJ0Yw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 1.8.1 - Insert USB VFAT thumb drive results in "Volume was not properly unmounted. Some data may be corrupt. Please run fsck"
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
X-List-Received-Date: Tue, 02 Aug 2016 13:05:46 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 1, 2016 at 4:47 PM, Brian Hutchinson <b.hutchman@gmail.com> wrote:

> I restored the original version of /etc/udev/scripts/mount.sh and now
> that I've cleared the "dirty bit" with the newer version of fsck.fat
> on my Ubuntu box ... inserting the USB drive works but it is mounted
> in /run/media/sdb1.
>
> What's up with this run directory?  Is this some new convention that
> is to be preferred over the previous mount point which before was
> /media/sdb1???
>
> Regards,
>
> Brian


Ah, I see now.  It's another Lennart Poettering thing:

http://www.h-online.com/open/news/item/Linux-distributions-to-include-run-directory-1219006.html

