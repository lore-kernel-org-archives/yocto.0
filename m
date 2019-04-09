Return-Path: <franksinankaya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8C17E00A84; Mon,  8 Apr 2019 17:15:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.68 listed in list.dnswl.org]
Received: from mail-yw1-f68.google.com (mail-yw1-f68.google.com
	[209.85.161.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA3D4E00942
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 17:15:49 -0700 (PDT)
Received: by mail-yw1-f68.google.com with SMTP id v127so5602032ywe.13
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2019 17:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:subject:to:references:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=t80mdmjEJ7/lfwarn3wniZSKgOX5xMlfbK8gQ+vKJpU=;
	b=l2p1z0umJj3thNO1bV8ZlB2JaeZyj3msuDij9pQQwP+OuV5+feKU7NF+BgsBKWvKPl
	8dqgqNnTQjZ7ojZTZXbZjMUaYrlPrqHjDPk/vcpmqFG4bNOSPNlcRei54R4jujrH1H/+
	0f9icZ0XliuvevVSlWaO2vAxjVDTMKc5wwEL5QDNC5XR3v6N2SaL8CwGYNGjQ0eDbqVr
	1xCfJ89IqVPcV0Dy08fPSXOvOUNCPkKJLSB94XQKhcN5TPNjuylDlYBAbpmjf1vSeN1J
	FY6xcX46Lr4fXI0VDTMkJT1UGqyF4cbeI66ztw2eEWCQFh0VdiwrAKwt2FnO6Ea0X0pt
	BJRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:subject:to:references:message-id
	:date:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=t80mdmjEJ7/lfwarn3wniZSKgOX5xMlfbK8gQ+vKJpU=;
	b=eBufvyvPP0hboGnM0p0Gq5LRRX/IRQ172FW4B3XMvljvwNrxhkNAfQQZO6We6KAln7
	qPZkeywiotCJ28mToDS2aDjZMNRSlhnw2trMMqunrnQgh7uS8jmjlYlsjhIdCZkDgYTW
	YjM+QQ7085261yPk/WeWbkupjaXBM+Gas2jKDs6DfbyoFr3DtUyEqb6b0WQSUPhxFHFQ
	5OWdECNRJJu8zPG6ezRbwR0Bwfm5xxdELMcUiYOiWMqBH/b/pz2WleT+g0qBTdNjn+44
	gDpo9t+1XAn0SOAiPKfWiaxfFyr//r0GW0GaAyBs82Z6+UrJNsY+b6P6Nl766CtoPZqI
	iSFA==
X-Gm-Message-State: APjAAAVDP1A4T4jQFnlIAERbwUC0cbs0o/7DX5Dizqem9/JnFxItlznJ
	f1V4/yQe9DVK9qOBspXRmzU=
X-Google-Smtp-Source: APXvYqxLW94NyNUFWcqjSEQZYF0nj14zd9GdByOyEULsmklDD2rYyN/dsb7yrZFuKXejbQrCJlRbrQ==
X-Received: by 2002:a81:4c82:: with SMTP id
	z124mr25681751ywa.210.1554768949205; 
	Mon, 08 Apr 2019 17:15:49 -0700 (PDT)
Received: from [192.168.1.74] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net.
	[75.58.59.55])
	by smtp.gmail.com with ESMTPSA id k7sm6037023ywf.33.2019.04.08.17.15.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 08 Apr 2019 17:15:48 -0700 (PDT)
Sender: Sinan Kaya <franksinankaya@gmail.com>
From: Sinan Kaya <Okaya@kernel.org>
X-Google-Original-From: Sinan Kaya <okaya@kernel.org>
To: yocto@yoctoproject.org, akuster808@gmail.com
References: <20190329144252.10259-1-okaya@kernel.org>
Message-ID: <84319ec4-cdd5-6095-1363-e07cf5c6d396@kernel.org>
Date: Mon, 8 Apr 2019 20:15:47 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190329144252.10259-1-okaya@kernel.org>
Subject: Re: [sumo] [PATCH v1] systemd: fix musl compilation
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
X-List-Received-Date: Tue, 09 Apr 2019 00:15:50 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/29/2019 10:42 AM, Sinan Kaya wrote:
> musl compilation has been broken since systemd: fix CVE-2018-6954. Fixing this
> by placing #ifdef for glob definition.
> 
> Signed-off-by: Sinan Kaya<okaya@kernel.org>

I didn't see any comments here but I wanted to let everyone know that
sumo-next branch is currently broken with MUSL unless this patch is
applied.

