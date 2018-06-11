Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CFF4E02175; Mon, 11 Jun 2018 15:34:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3601FE02164
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 15:34:34 -0700 (PDT)
Received: by mail-pg0-f53.google.com with SMTP id m5-v6so10443065pgd.3
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 15:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=RLgyr9FiQlhAgXzZ7Js7KLGwxsDr1CgEGKtlHdJt2jA=;
	b=o37aT4ORiNFW+cyEapqldFf26P/OSLL6j/ylVlATN3O5d+2Eu39JBapqHA0TYL9v1u
	g3CkshQs7UI3WJksQcA2Si7NnT8VqG4X9Yqhz7HR4mkBPlFpHOolMaVC/4YuaXKWbrXB
	SVuoDa2eVGL6PkdVpKEsKF9cEXllV1Z2U/B1/IfuRl3cuF/5PF7Tdse2LZwEeYZrb/MP
	9lQb+n8ZrfV6lDwxG/mqq3Q31r7fTW5EH2fuGMsIPkyjJtzQ0oikHJNRj50ln/y8Afx1
	bqagpMopCAidSEyswCx8uhDSnEMjliXBi/q8S5usQZBBFN1lZ+v0LbLJ+0ZR2SBDJsbY
	XTEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=RLgyr9FiQlhAgXzZ7Js7KLGwxsDr1CgEGKtlHdJt2jA=;
	b=WgUDYFDhDCOaypXnBq0swQPTmTlspxiBefvdDgi3xIE/+KoZdWkobEEd/RIBpNt+tr
	0G0C8GkrEdit0GWgxenZ8LczelJP92b7xMdARg78+Xr+M4gbGSLlQkjOCv9i1v+XaiYc
	pRn2w3MEB4kIYHVmLOvzosYj5wNvEpPyBHjLVymUBY/v42Xq11waFd5zRsT7rUuJg6s8
	IeaoLEE9S5YK4cw7Uq2oMS0X4RTmHzg0GZa/5HMh8sllu+3+CLB9q8BHeEvc2IrFM4Zm
	6JHBXdz98Pusez9GSChPwR4kJWGE3DomkptwVg+/AuqQqjhFswZeCVdUoFWOo+hhBX/C
	Mliw==
X-Gm-Message-State: APt69E2oJCr5T/E/e4rTEe1jLO8i5yseuilnge7/J4kWibDbpH4SbRVw
	OhpPf9/hUUmsMGnGvNxJbX3BQHw3
X-Google-Smtp-Source: ADUXVKJlIlsIE1cBEuER/SMtRtOE23WM9MY7YxgsF4HOMLNFNWn+koH6MH6/QcBZnhmhX+cr8Or76Q==
X-Received: by 2002:a62:9b57:: with SMTP id
	r84-v6mr1005298pfd.157.1528756473069; 
	Mon, 11 Jun 2018 15:34:33 -0700 (PDT)
Received: from hermes.local ([2601:646:877f:9499:8876:e80:c7fd:8b89])
	by smtp.gmail.com with ESMTPSA id
	z74-v6sm27009327pff.54.2018.06.11.15.34.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 Jun 2018 15:34:32 -0700 (PDT)
To: jan vermaete <jan.vermaete@gmail.com>, yocto@yoctoproject.org
References: <CABF_=ygmbWRfWXcJKzmFt47jm9+pW4OGhCM1m-2-AO47qzKsRw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <07783dd9-a976-49b7-2d62-4e03dce4c817@gmail.com>
Date: Mon, 11 Jun 2018 15:34:12 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <CABF_=ygmbWRfWXcJKzmFt47jm9+pW4OGhCM1m-2-AO47qzKsRw@mail.gmail.com>
Subject: Re: excluding the Proprietary source code from the archive
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
X-List-Received-Date: Mon, 11 Jun 2018 22:34:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 6/8/18 2:57 AM, jan vermaete wrote:
> Hi,
> 
> I have a question about the licenses stuff of Yocto.  I hope this is the 
> correct place to ask.
> 
> I followed the instructions of the mega manual (chapter 7.32.3.1 
> Providing the Source Code).
> 
> Added in my local.conf:
>    INHERIT += "archiver"
>    ARCHIVER_MODE[src] = "original"
>    COPYLEFT_LICENSE_EXCLUDE="CLOSED Proprietary"
> 
> I have a recipe called x.bb <http://x.bb>, with 'LICENSE = "Proprietary"'
> 
> After a build of the image, there is the file 
> 'build/deploy/licenses/x/recipeinfo' which holds the correct license 
> 'LICENSE: Proprietary'
> 
> However, I still see the archive of the source code in 'build/deploy/source'
> 
> 
> PS: I have DEPLOY_DIR = "${TOPDIR}/deploy" in my local.conf file.  But 
> without, the result is the same.
> 

if you enable verbose output from bitbake it should print the reason for 
excluding/including a recipe into archive. Maybe that will give better 
hint on why it thinks it should include the package in source archive

> br
> 

