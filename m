Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5601E00D4F; Tue,  6 Aug 2019 05:34:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.181 listed in list.dnswl.org]
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
	[209.85.167.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63975E00C22
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 05:34:33 -0700 (PDT)
Received: by mail-oi1-f181.google.com with SMTP id t76so66318736oih.4
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2019 05:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=LEeyWRDP2xXJTUNAsOmiY2Irf8fyNv2nbAL3+0RVT0w=;
	b=MYVbMC0qWCeGD2Ex9aEdf5+COPqyF5pobgtoMgofslN8lhlOcVyFR+Rx+xMUNQk5fw
	4TVoPWRbtX8p/+sw4I/oF3Bgm7aV1h3ZW5CE5bZSmZPVMsdPoI/nuYUCR1i5FEWtAMhV
	RqEmDu/NXfAOTJSz+TpJFr8lpz8ea6zmsUeyntSpQwrZacz1Efxx9lC9JmpQa/fSBRR4
	TkQxKy8QdnR7xhY1HB/e4Kwn2CUPnSuPLD+9lizd0BOcSSZcthZ83rsAF8OgVASkQZLr
	V3j2Qi9UHCYv9XAVbzjmX5vo1hlyfQQoLu2XiSkXb3HT+jqbbKqiBMDswPuy3+uKnl5J
	Tuwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=LEeyWRDP2xXJTUNAsOmiY2Irf8fyNv2nbAL3+0RVT0w=;
	b=jYYZhBTp4PmaUTk9aYNrFNe4+BUpnZgju4usFqCytwae0qUmMJTJXC2P0bRiohjseC
	lqEUijaIhA1Xiqkhl03ls1M5KRtLAh1i55kOXwOHivYUfEhXz+YBCPoeLdAmM4bCEvtN
	F2Mpxy+ynNv/v/KFhRBhilIoYlQsVCKxZHbLxCIwOIEpewrJRCGioCqHcj18qPZqXLqT
	nCowPxRR2z9cz02zP1XewCZzntxGsWLa3tWVPSMYxZpFfZlBbN+oHSoY1Nr+PbQCaPAR
	jfS+j1c1A21UcAfX/5dPGDUngrRpRvscsPPKQUxrSIgGMUnL9mhLIkCBPjXAXn780C4K
	oNlg==
X-Gm-Message-State: APjAAAVN5MvnDWmC9alrC//oc4e7MAaX+dP/qHEz+/7Ak00V4udaEz6g
	jPkwf36//Rq71LJNJ5zNtMuWyI1C+aVzWb4UvFcwvlNf
X-Google-Smtp-Source: APXvYqwUVKqnPlVae0MifDCFKNyWeCw9vqcjQTWY9/CLrnttcG61/fCPaTG8HIiX42K9Re8e8H6JmcSbtO1g5Oy/BSE=
X-Received: by 2002:a05:6638:627:: with SMTP id
	h7mr3945318jar.33.1565094872446; 
	Tue, 06 Aug 2019 05:34:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Tue, 6 Aug 2019 05:34:32 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Tue, 6 Aug 2019 22:34:32 +1000
Message-ID: <CAA=hcWQcjmVCQGbQWNjMLCg_x3g0qXEx5XKw3goY0NC7VChZug@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Replace busybox by bash
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
X-List-Received-Date: Tue, 06 Aug 2019 12:34:33 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

The busybox is too simple, my application heavy based on shell
scripts, I have been thinking to dig out the busybox and replace it by
bash, has anyone remove the busybox to use bash as default shell? How
large size will be increased and what will be any side effect?

Thank you.

Kind regards,

- jh

