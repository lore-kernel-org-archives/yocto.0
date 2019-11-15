Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1766E00D99; Fri, 15 Nov 2019 09:23:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E736E0084E
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2019 09:23:34 -0800 (PST)
Received: by mail-pl1-f172.google.com with SMTP id bb5so5104982plb.4
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2019 09:23:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:date:in-reply-to:references:organization
	:user-agent:mime-version:content-transfer-encoding;
	bh=E8eSTAcpe2rG/PHujtXp9mTQ76Ia94X0Mrbt3BJsY2Q=;
	b=MAiTeFrlfQQUGXmhDmjzba6VUcNgI9fKD4QSiL7sJ36TsWakUlT4Ie776/XKcxmv4z
	2ZNMoFzyLOf6fRn7LQXdpg8gUk9VrAQiXFoidSkVE6TsQbVGAn4ZWa4An38RFC0X6CGE
	RmkQWdRDm2Lg2hqltcxJ8d8ycdlMAHPgMNdoo3sbKWtE0ZuIydyL5NAof17PeixW/Vm5
	VYYeXQUbuH978roUXEyMPzbcBebr6R3V9vItm/HKM2W3tbIa8hA/GHtzzntRv1UzaUsg
	z8kcaUX19O+XD/ByjnV5BJDPL4c/JtZ8txU1KH2rJL8HPCZFTy31F+UJTNQXI/LeQSwX
	7Bcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:organization:user-agent:mime-version
	:content-transfer-encoding;
	bh=E8eSTAcpe2rG/PHujtXp9mTQ76Ia94X0Mrbt3BJsY2Q=;
	b=VFI4ej/WtRnipK29Wk59pyZJT3+WwZVd5Rx9F232d+z2szC8iLHNpBiyjyym0rdhDb
	+EbLap1y7ZzoTXu9Ba4UJRTukL4msJOWonb5+yXK2yU8d0r3rlJ7WaIaqERQry7FDuIi
	KHUUWz3rCyMHoPuy+V6DWlsFB85KU9/0bNhPbwO72LZJUQCaJt77Cz/CZwoBp0+GQPEK
	EjAHBdEqHsa4o96GLqacoACf0QVls+wFltWQ2nFzW7MFxbRLOR1lpZscp3TDI5HbLznU
	4UGvjF+sEUUa1edH4KquIA5EB8z6aeCFnHn27+LwFVHlzYlmL+CWQOOJyA87OH57jWf+
	dDdA==
X-Gm-Message-State: APjAAAWnGqzleO//hn0HTgic25MyKdzhM5EKGkWLeK5Rt4o4IO1JGGyb
	pdeEH+ZSdp6fGxJ38+CihNs=
X-Google-Smtp-Source: APXvYqzsNxMcgcWLITvpWqlU0b8IIh5IXzTOrlkDc8Q8e3yfTb80zQ7y3/l773it5kT2AQE/udU4ag==
X-Received: by 2002:a17:90a:1048:: with SMTP id
	y8mr21015635pjd.22.1573838614237; 
	Fri, 15 Nov 2019 09:23:34 -0800 (PST)
Received: from apollo ([2601:646:8500:1c20::30e8])
	by smtp.gmail.com with ESMTPSA id
	67sm11725585pjz.27.2019.11.15.09.23.32
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 15 Nov 2019 09:23:33 -0800 (PST)
Message-ID: <09e64396541b18c13af8081165efb122ccb4ad34.camel@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Deepika Teriar <deepteriar@gmail.com>, yocto@yoctoproject.org
Date: Fri, 15 Nov 2019 09:23:28 -0800
In-Reply-To: <CAM_pFj-xRKHu6YsDRgi0e6RiPZU6rWbhpnS0MCTkk6JS4cJ5ig@mail.gmail.com>
References: <CAM_pFj-xRKHu6YsDRgi0e6RiPZU6rWbhpnS0MCTkk6JS4cJ5ig@mail.gmail.com>
Organization: HIMVIS LLC
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
Subject: Re: Adding a custom environment variable
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
X-List-Received-Date: Fri, 15 Nov 2019 17:23:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-11-15 at 12:29 +0100, Deepika Teriar wrote:
> Hi,
> 
> I have a module called unit-tests.
> I want to create an environment variable so that at compile time I
> can select whether to add or remove the module from build.
> 

perhaps look into ptest distro feature.

> Thanks
> Deepika


