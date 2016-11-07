Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24D1AE009DA; Mon,  7 Nov 2016 09:37:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.174 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B96AE009C3
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2016 09:37:16 -0800 (PST)
Received: by mail-pf0-f174.google.com with SMTP id n85so93781265pfi.1
	for <yocto@yoctoproject.org>; Mon, 07 Nov 2016 09:37:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=N4PeXsSUQy19W9IwoBKKnEaByVPNo4Kr/s0bxffgZFM=;
	b=kStodMrUmhVd3uLAgBOWf2WZsu5yXdS7r3tKiFBQaem2dz5y1z49FLx8xHDXBPxXMs
	bIGrfcLUCs12eJ7WVz0Rl6U3MvEufGkJHgQHkRd7MEEEDUMOhWu6xGzRqduWx7v4Z7Yx
	Y5YUmjge5Ck1sot1sShlFxyIeeOLPVlkhquDXob8QrA2TcUA1NohjQ7P6SLiuBlklLg0
	nYacYPVoPSFVq/b6EtVZOoDlJbnijf8fTC8Q+YuNR2/O+V5OYFAUJ+iH+4pwrwGxYpcw
	ZdSK0DYAr/fNZM9ipfxv1gsgPYX5xfMn2FcEKwWss0nS1bJAwcjgzKKDVX2YDzF0jcRW
	ZT3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding;
	bh=N4PeXsSUQy19W9IwoBKKnEaByVPNo4Kr/s0bxffgZFM=;
	b=kWTF8koHeLUaSbVlpqh8hYEpb03891L4KJrB2klV0xLVG7690DpJv2yPce4egqYsS3
	0ZiEvR7v8ShtaMXSxsQfLFz+9flRQDuWmfEL3XQ9h3AtaU2pijBo0Q8wTT/aMQGRprfY
	/xTMDbt4XTnMeoZ8+JEVtU2RWOl79utvCyhQD9kXepZ9ZAKrRSbziq/qitW5iaz1zc/y
	zFDE3qLTxPtSy7BuTsYgJKK2HAgEu4CFBwO10vuu6uzaLhDPKmBPGPbTW8RS1rdotiDe
	6X+MTuXqlaqNFyLCq7qfHkeAetIJRhGcBxpo16L1CapUThmIWuNwILGnrFNsNVOij5Pp
	pe7g==
X-Gm-Message-State: ABUngvdKKFeVjq4PdgQiVUBhh21YCJKZ2GwzT2jQ75ZYmD2VusJGe/lCHKYxhCvDNgDplg==
X-Received: by 10.98.201.196 with SMTP id l65mr15474014pfk.116.1478540236064; 
	Mon, 07 Nov 2016 09:37:16 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:d844:e9e6:5f6d:525])
	by smtp.gmail.com with ESMTPSA id
	r1sm41958969pfg.56.2016.11.07.09.37.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 07 Nov 2016 09:37:15 -0800 (PST)
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <30C2D590D16A5C46ADFE6521910377987FF756FD@AZ-US1EXMB02.global.avaya.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <5b741b70-e261-626e-756d-bcf5468c9d54@gmail.com>
Date: Mon, 7 Nov 2016 09:37:14 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <30C2D590D16A5C46ADFE6521910377987FF756FD@AZ-US1EXMB02.global.avaya.com>
Subject: Re: Supported "init" types
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
X-List-Received-Date: Mon, 07 Nov 2016 17:37:21 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 11/7/16 9:27 AM, Vuille, Martin (Martin) wrote:
> I see that “sysvinit” and “systemd” style init is supported.
> 
>  
> 
> Is there support for BSD-style init, or some other minimal init?
> 
>

there is busybox/mdev init option in OE-core if you are looking for
a minimal init and not specifially for BSD init.

its documented in meta/conf/local.conf.sample.extended

#
# Use busybox/mdev for system initialization
#
#VIRTUAL-RUNTIME_dev_manager = "busybox-mdev"
#VIRTUAL-RUNTIME_login_manager = "busybox"
#VIRTUAL-RUNTIME_init_manager = "busybox"
#VIRTUAL-RUNTIME_initscripts = "initscripts"
#VIRTUAL-RUNTIME_keymaps = "keymaps"
#DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"


> 
> Does anyone know of such support in a separate layer?



> 
>  
> 
> MV
> 
> 
> 

