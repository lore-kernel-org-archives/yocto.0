Return-Path: <k4230r6@gmail.com>
Received: from mail-ee0-f51.google.com (mail-ee0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 459B6E00840
	for <yocto@yoctoproject.org>; Sat, 18 Jan 2014 04:44:17 -0800 (PST)
Received: by mail-ee0-f51.google.com with SMTP id b57so2558374eek.38
	for <yocto@yoctoproject.org>; Sat, 18 Jan 2014 04:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=5cOthN+dlF/OsarcqVSYiQF2UxI3Dxxfl9uxtfR5QAg=;
	b=EGWJqdzUmeILr4OJ+1OOseNwBPdlJMV4zq/lh/b5kQO7M6yjYs+VQbQbYe2YevJvcH
	eK/j+KxLqlveoKAuqtR9aJGiQ7z3dP1GxIN7TpNSkwj2SoqR/xiGTotA3ktbPzhl0dOT
	yZ5egH5hs7LFs+Pljyb75y95EKNWWFyjfOs2KNpYdJ1qClTD5p/qjdQv8pbiCsMm6G48
	9MI+pPQmkesu1UrG4vUIZB5EnexZoKOOZk6/BiOXW+bNLVKKP2AdtWsV5z94FsgC68Fi
	TXaf8kEmRoSifs7KyEKg4yqV9XtdaGfYriYu8W9iBBZeRD3Q0x3/fIU0tKYjtv4E1Dvf
	ONPg==
X-Received: by 10.15.52.136 with SMTP id p8mr7834741eew.11.1390049056083;
	Sat, 18 Jan 2014 04:44:16 -0800 (PST)
Received: from [192.168.24.157] (HSI-KBW-091-089-117-035.hsi2.kabelbw.de.
	[91.89.117.35])
	by mx.google.com with ESMTPSA id l4sm34981405een.13.2014.01.18.04.44.14
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 18 Jan 2014 04:44:15 -0800 (PST)
Message-ID: <52DA771E.50907@googlemail.com>
Date: Sat, 18 Jan 2014 13:44:14 +0100
From: Christian Ege <k4230r6@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130329 Thunderbird/17.0.5
MIME-Version: 1.0
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: How to fix : "WARNING: The recipe XXX is trying to install files into a shared area ..."
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
X-List-Received-Date: Sat, 18 Jan 2014 12:44:18 -0000
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I do have two recipes which install files in a shared area both packages 
install files with the same name but maybe with
a slightly different content. So splitting packages will not be a good 
solution. What else can I do?

I tried setting both packages to conflict each other that also did not 
fixed things up.

Are there any hints?

regards,

Christian

