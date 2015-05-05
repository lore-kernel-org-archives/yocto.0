Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77DD8E00997; Tue,  5 May 2015 05:36:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 12BD6E00961
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 05:36:06 -0700 (PDT)
Received: (qmail 28901 invoked by uid 1003); 5 May 2015 12:36:05 -0000
Received: from unknown (HELO ?192.168.11.121?)
	(philip@opensdr.com@108.44.122.151)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	5 May 2015 12:36:05 -0000
Message-ID: <5548B934.70400@balister.org>
Date: Tue, 05 May 2015 08:36:04 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Craig McQueen <craig.mcqueen@innerrange.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <5500469A22567C4BAF673A6E86AFA3A402227F4FAF2F@IR-CENTRAL.corp.innerrange.com>
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A402227F4FAF2F@IR-CENTRAL.corp.innerrange.com>
Subject: Re: wic and SD card size
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
X-List-Received-Date: Tue, 05 May 2015 12:36:09 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 05/05/2015 12:22 AM, Craig McQueen wrote:
> When using wic to make an SD card image, such as:
> 
>     wic create sdimage-bootpart -e core-image
> 
> How do you tell wic the size of the target SD card?
> 

Take a look at the wks file used here:

https://github.com/balister/meta-sdr/blob/master/contrib/scripts/build-all.sh

Philip

