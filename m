Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66B1CE01206
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 23:01:35 -0700 (PDT)
Received: by dadz8 with SMTP id z8so6685917dad.35
	for <yocto@yoctoproject.org>; Tue, 08 May 2012 23:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=VRh2e8J9cVPN25eT9cEIKlw/bzxOHPSx3HPdDwID1NE=;
	b=anWM+/iVOMueTNaNqIoLGzCcN3lr9or83khyrq6m5kt/d/1Wt9eMOfltGY6Ta+iFgD
	QqLK+kwIITotl14KctTyyAokK7L38C58YlOMlnypE2awbVcv5lhjRi/gsIvNik+i50WH
	mD1y56CcnppdmpB/mHeO1QxpRUalAL/k6rucsVvGgbc4sIIC0iMQ884P8+u/8uH7ARQH
	LF1mWb+lGQZBwQv24B3N9BLeD5D3mazvbxxFG25456RxNxlUsf7QD+gZ5FMSQSDEe3jA
	07gmFU5Z8D3PfGPCsJNumUJbmjXzHVt2Qpv90cqLTFImK/D+bCJDOW63kDAk831NjgDg
	CHsg==
MIME-Version: 1.0
Received: by 10.68.202.130 with SMTP id ki2mr5531021pbc.52.1336543295064; Tue,
	08 May 2012 23:01:35 -0700 (PDT)
Received: by 10.68.48.164 with HTTP; Tue, 8 May 2012 23:01:35 -0700 (PDT)
In-Reply-To: <1336542274.43652.YahooMailNeo@web121503.mail.ne1.yahoo.com>
References: <CACW_hTaV80O+vVw+hweKZxDWgNFOjgDU4mHemivEFudiA9PLvg@mail.gmail.com>
	<CACW_hTaroQeLuPDF5LbhfLCuB=-qpLFPFLP1eDAGZmWAqdkHJg@mail.gmail.com>
	<CACW_hTaeANMD271GeoU0hP8aacDd-8AhyrvXZ185LJoXLxqoqw@mail.gmail.com>
	<4FA94BE4.1040503@linux.intel.com>
	<CACW_hTY_wtMa4ZLwRXMdeiJyouKkG0TTSe6PdO+m8Gt02-LM=w@mail.gmail.com>
	<1336542274.43652.YahooMailNeo@web121503.mail.ne1.yahoo.com>
Date: Wed, 9 May 2012 08:01:35 +0200
Message-ID: <CACW_hTaOOT8XoGiA55UtcTNeCVAzvWJ7UEvfGBv3GiE4fyX1WQ@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Yes Yanus <yesyanus@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [denzil] Licenses, source distribution etc
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
X-List-Received-Date: Wed, 09 May 2012 06:01:35 -0000
Content-Type: text/plain; charset=ISO-8859-1

2012/5/9 Yes Yanus <yesyanus@yahoo.com>:
>

>
> If you use archiver.bbclass , you should enable three variables
> INHERIT += "archive-original-source"
> SOURCE_ARCHIVE_PACKAGE_TYPE = 'srpm' or 'tar'
> SOURCE_ARCHIVE_LOG_WITH_SCRIPTS ?= 'logs_with_scripts' or 'logs'
>


Thanks. I'll try that.
Originally I had only INHERIT += "archiver"

Best regards, Frans

