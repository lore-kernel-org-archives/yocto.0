Return-Path: <tomschuring@gmail.com>
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDE53E01405
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 02:05:28 -0700 (PDT)
Received: by mail-pd0-f177.google.com with SMTP id y10so4575633pdj.8
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 02:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=K/XSuFTgHjekrVjTX7Lw7I5Ej5mauEaRccaLwFJGFH8=;
	b=EICoQv5b22OFtl3rYSgXXqhktAl9FxukHGfs5q+J47Sq0jddtnbzWor3mzqYQoPwzZ
	ay56bk9kRByfOleWKwBtPpa1qA+mE9v/oH7xIEfQrFgwSJg2qrzivgXE8XX8MjyHVPDE
	XKfFBfd3f9PmKgGqtUFmf7fp01/XN5RGetw2ZZDgPNEX8lph5m/2pc0seTlu/EBoC7e4
	PvPIrkCRLGEbiqmtGUX5VS7OgPDA7RQiDtcYLW9ADNX7q2rQb9lIs6zx1zve/hiFw3wH
	R90vj+0gHsB6wrCU4REXLq7nxasDAdTKvnuOWPjQmf1KNNuqLwfyMz0Z9hzfnVIC3nVJ
	vVwQ==
X-Received: by 10.66.27.143 with SMTP id t15mr928545pag.171.1376384727989;
	Tue, 13 Aug 2013 02:05:27 -0700 (PDT)
Received: from [10.1.1.9] (124-148-182-130.dyn.iinet.net.au. [124.148.182.130])
	by mx.google.com with ESMTPSA id
	yk10sm45387429pac.16.2013.08.13.02.05.25 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 13 Aug 2013 02:05:26 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: tom schuring <tomschuring@gmail.com>
In-Reply-To: <CAJTo0LaQKN60TuMYnLe9e3V=LJzyeJCgNKNPtd_OGDb0GvdD5Q@mail.gmail.com>
Date: Tue, 13 Aug 2013 19:05:21 +1000
Message-Id: <F5407ED9-9AE1-4C40-A9E6-63E7D3B2FF8A@gmail.com>
References: <CAHwX21qDOwpi-ea2Eh4=EXJpEv7k9Em_2PMGvURVstK409MmpQ@mail.gmail.com>
	<CAJTo0LaQKN60TuMYnLe9e3V=LJzyeJCgNKNPtd_OGDb0GvdD5Q@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.1508)
Subject: Re: matchbox-keyboard documentation
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
X-List-Received-Date: Tue, 13 Aug 2013 09:05:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

thanks Ross,

is there an example that uses the API ? is it the matchbox-keyboard-im ?


> There isn't any real documentation, but the latest version of the
> keyboard has an embedded API available.
> 
> Ross


