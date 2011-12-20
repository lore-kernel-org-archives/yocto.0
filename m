Return-Path: <jay@jay-tech.ru>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C55F8E00305
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2011 00:16:37 -0800 (PST)
Received: by eekd49 with SMTP id d49so6801027eek.35
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2011 00:16:36 -0800 (PST)
Received: by 10.213.28.205 with SMTP id n13mr3359249ebc.97.1324368995129; Tue,
	20 Dec 2011 00:16:35 -0800 (PST)
MIME-Version: 1.0
Sender: jay@jay-tech.ru
Received: by 10.213.26.71 with HTTP; Tue, 20 Dec 2011 00:15:46 -0800 (PST)
X-Originating-IP: [93.81.196.112]
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A12ED44B7A4@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12ED44B7A4@shsmsx501.ccr.corp.intel.com>
From: Yury Bushmelev <jay4mail@gmail.com>
Date: Tue, 20 Dec 2011 11:15:46 +0300
X-Google-Sender-Auth: FrrvGsK0EbsZdc4xQCGGNB559tA
Message-ID: <CAJG6M_OoRkFVs-BSLiKR7gKTEH4YF-cCXh7KMOJU_tygn0tEUA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: Web UI design for bitbake
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Dec 2011 08:16:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

2011/12/20 Wang, Shane <shane.wang@intel.com>:
> Hi all,
>
> Web UI interface is the next what we are going to do. Uriel drafted the first iteration of the architecture design and I posted it onto https://wiki.yoctoproject.org/wiki/Web_UI.
>
> Looking forward to your feedbacks.

I would prefer to remove PHP from there and re-use python (django
framework e.g.) just because we already have python as bitbake runtime
dependency. We may even use builtin python-based web-server because
control interface requires no high perfomance solutions.

I remember some ideas about splitting bitbake to client/server
processes like e.g. transmission or quassel.
Then one may run bitbake server on headless machine and control it
with bitbake client from desktop/notebook/tablet. So one may control
it with any bitbake client - HOB, WebUI, command-line.

-- 
Yury Bushmelev

