Return-Path: <Yi.Zhao@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33EB0E0044A
	for <yocto@yoctoproject.org>; Sun,  3 Jun 2012 22:56:05 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q545u2mt001523
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 3 Jun 2012 22:56:02 -0700 (PDT)
Received: from [128.224.162.171] (128.224.162.171) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sun, 3 Jun 2012 22:56:01 -0700
Message-ID: <4FCC4DEE.6080004@windriver.com>
Date: Mon, 4 Jun 2012 13:55:58 +0800
From: Yi Zhao <yi.zhao@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1206030818310.4650@oneiric>
In-Reply-To: <alpine.DEB.2.02.1206030818310.4650@oneiric>
X-Originating-IP: [128.224.162.171]
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: will current yocto pull build beagle c4 content "out of the box"?
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
X-List-Received-Date: Mon, 04 Jun 2012 05:56:05 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit



On 2012年06月03日 20:21, Robert P. J. Day wrote:
>    apologies for a simple question but i'm putting together a short
> tutorial for our local linux user group this week and i want to demo
> configuring and building an image for a classic beagleboard c4; does
> the generic yocto build configured for beagle create images compatible
> with the c4?
Hi Robert,

Yes, the image is compatible with c4 . You could check the 
README.hardware in Yocto source to get more details.


Yi

>
>    someone else has my c4 at the moment so i can't test it, i just want
> to verify if there are any "gotchas" related to building an absolutely
> stock beagle image, loading it and having it run.  thanks.
>
> rday
>

