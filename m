Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A77C4E011CC; Wed,  6 Jun 2018 02:33:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20FB0E01074
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2018 02:33:02 -0700 (PDT)
Received: by mail-qt0-f175.google.com with SMTP id d3-v6so5646782qto.1
	for <yocto@yoctoproject.org>; Wed, 06 Jun 2018 02:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=dOI+VPFr4qCdTEFZnp/DWTDsiPCu6aricRTd3fB2IpA=;
	b=i+OFshBZlJwwOwPhfdD3nnDJfISZtzHQd+XZtjGeRcLh+0Qc5dAJT+DkfqhMv9cROz
	qcx+DHtoqjVLnwmzbLy/d0T6EtknL4cc3723QZxp/TtLnyhXYEtMaNb2Ke/PLULeaFMN
	XJ8Xzn9+cTfZk3A/IFzkv4CFGqGI48BBvbK/5tN2D2uNwM9669qcOau0EoMQ9NneCmDE
	yf2BA9kqiBqhgXjNpfxeJ2GsC5A2WQ/kYMbUiYr8xuaDv/FOkbdiyOyhJ6hltptt78q1
	YgjPRYdrbMZu9sLee5tGWN9yuSCNOLTGVHktoAbnIV6AES1QSHHlz3Zm3xeJKFFg4XLP
	ri1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=dOI+VPFr4qCdTEFZnp/DWTDsiPCu6aricRTd3fB2IpA=;
	b=e/h80BnRXG13cMo9abCTl8fOUOL1bqZDc98KK+R/EH9+AmfwHY3yTVFq/rYSfAmUpZ
	3Iaeom2x0jmgZI9WIbcWXybLFfNE94Sx87sI9mzYPqsYS3a3CL9r/cAAzHIpfJ7+XIBJ
	8mDYmVYdHEjw5BiIDfTMxP1cxNm3Gpnzy6G8i1/YcEC1mS7piWonPuM00WzYENueJfSM
	OmIKdzApywWpSvv49kbmj9LNvicVQaW26JutOmRdsuqaSz4QMyBBeK287JAAlhVJa3Tj
	u2ucmX1QbQY1FVM4F3+xCN3szxGGU/jQwRE1bJAo4w0R7/nzcKly6OpCekfti2SRYORo
	9pFQ==
X-Gm-Message-State: APt69E0JvvS0EphrMPVkb07c/3k1lGmbiGyKQuozUbjxl4lapwBNT1OA
	x5hdPKOMQ8YX+X3PnRlYb4J4Aq8EYS417MPUIOH4sg==
X-Google-Smtp-Source: ADUXVKIzPblM7uefQEro+i7S4tKIsrpZfuRBKUwGu/dqDytSehF7N8GCAgPSIawlxSbS5mxViBgBU3jAdwmbqVOGOyA=
X-Received: by 2002:a0c:ac95:: with SMTP id
	m21-v6mr1951623qvc.12.1528277582089; 
	Wed, 06 Jun 2018 02:33:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ad44:0:0:0:0:0 with HTTP;
	Wed, 6 Jun 2018 02:33:01 -0700 (PDT)
In-Reply-To: <bd69dabb-1aa3-6553-4f43-2337c9cf5190@windriver.com>
References: <443D9650-0A26-433A-AC22-F61DBFDE1221@gmail.com>
	<bd69dabb-1aa3-6553-4f43-2337c9cf5190@windriver.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 6 Jun 2018 11:33:01 +0200
Message-ID: <CAGAf8LzoFAc98vGVwL=ML6zUr3dWsW89oN4QsXd18kazhGY3qw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: partitions resizing on the fly
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
X-List-Received-Date: Wed, 06 Jun 2018 09:33:03 -0000
Content-Type: text/plain; charset="UTF-8"

Here is one good topic which I already know about. Virtual Box virtual
disks' sizes!
https://superuser.com/questions/1096549/file-based-dynamically-allocated-hard-disk-on-linux

Two questions (stress on [1]):

[1] VirtualBox allows you to create VDI, VMDK, and VHD types of
hard-disks that can be either fixed- or dynamically-sized. Is there
any way to make a file-based dynamically-sized hard-disk for use by a
Linux host OS?

(although I never the found way how to dynamically shrink VDI VD, the
expansion is obvious)

[2] Is it possible to employ any of these three types of file-based,
dynamically-sized hard-disks outside of VirtualBox, on a Linux host
OS?

Zoran
_______

On Wed, Jun 6, 2018 at 11:17 AM, ChenQi <Qi.Chen@windriver.com> wrote:
> On 06/05/2018 10:33 PM, Mihaela Apetroaie-Cristea wrote:
>>
>> Hello,
>>
>> I have a minimal yocto OS built for RPI, which has three partitions: boot,
>> root and data. Is there any way to resize root and data such that root
>> expands/flattens when files and others are added/deleted? Such that I can
>> make more space for the data partition. At the moment my partitions are
>> built with minimal size and I expand them with gparted after I added them on
>> the sd card. But if I put my device somewhere unreachable it would be very
>> useful to have a way to expand and flatten portions on the fly.
>>
>> Thank you,
>> Mihaela
>
> It is said that btrfs supports such feature? Frankly I didn't try it out.
> Yocto supports building out btrfs images. Maybe you can give it a try?
>
> Best Regards,
> Chen Qi
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

