Return-Path: <chris@2net.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69658E00AC5; Tue,  2 Apr 2019 04:18:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [212.227.126.135 listed in list.dnswl.org]
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Tue, 02 Apr 2019 04:18:46 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E278EE00AA9
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 04:18:46 -0700 (PDT)
Received: from [192.168.1.177] ([82.16.206.23]) by mrelayeu.kundenserver.de
	(mreue009 [212.227.15.163]) with ESMTPSA (Nemesis) id
	1MGQaz-1h9y2c2MOb-00GrFB for <yocto@yoctoproject.org>; Tue, 02 Apr 2019
	13:13:43 +0200
To: yocto@yoctoproject.org
References: <2913d1a0-8d9e-14ac-2801-4c2efede0d2d@gmail.com>
From: Chris Simmonds <chris@2net.co.uk>
Organization: 2net
Message-ID: <07be9df2-da6f-7f73-8e58-f442e6d62e4b@2net.co.uk>
Date: Tue, 2 Apr 2019 12:13:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <2913d1a0-8d9e-14ac-2801-4c2efede0d2d@gmail.com>
X-Provags-ID: V03:K1:f1BLTJQ2X7ozni7Sdzu5njZooWPGhD7vbd2HfjAInVzp7XyNV9z
	ir7/Hoh+6F5Cs0cLCOV1xdCPkXqr+V85B63xMv+0GVdaWXCHchVpeZmwl+r4iwH41Ni7eAy
	7K9df2wNphN2y/sXKDUJWTO/mnwI7FjRSRBHg1fH4PtoW31NUPtp9sghe9OWpJV83mqHUvr
	80sRuuzHY0HCczpVSUV0Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:8ZJqzR4UVZY=:zvBMLZbyohzJdPbpevMAnk
	W6hxwe1g9CYoltqSURYVYv7eZ+mlX7tyL0KFY+aEWlz7eQGfR/lQ75qbS4v+xSuPAOQeeOtiZ
	61xM2cwZ+6Tm4qn9IuHlEaXlIMMGY1JwNId3Cb5xRVM7wo0/nEaklmFbNUH9ePwbGRalxozF1
	hBG4BSkj64T3RbYf+FeNAfuLgJ/cMvxSrRQ0bMx1lkiCIju3OUbqeJQNY5OgtwCSItMnf88Ej
	RprXmM5JKN8nFwWEf1ql4O0duzlLQU3x5kf/M06HinecMGyw5EuR+ytLhfktCsGPWvPtf/tdL
	vvfpjFolWo+cXq0Kw+tR6lIMHCr59pP86JwAJA7vNzBBb4Bda5PI0TtOuDffGRTJPAqGaedgH
	+NWASiF6Xa/7FRbtz2KT9s3IPWd4Rb4RcvSmJQBTOi6o7mb/5SElUgO2/Csbdanr9idIGZp94
	q1pQMxnpzOseI/K9XOES0PhGNCzrgHzA2YtCyzk1RICi0duSiHxOtxbmdTHdWiha05WUVkg74
	oYRG0jsOXpW+fSsHeXzAAsIGxziGfzT0FU446YfWuqZAusZJJ38AcqbejXP8tpyhd9r+59ru5
	hSf3jUe8Uq6xWZcxA0FwrC2GPb/IvPaF2WBCyVReDSDOsnMOjhIpiSZd4LsjUTkwbndvuOysR
	qmESmDZH7Cz+/MSPn+1Bvezi+X/XtUCLAQZsRAuyF9gImbIAp79wTk7YBX92cymQzs3W2YPQW
	QntLOu8CoDFVGfkyftHYr79reIb2fjKpYF/B0SSxyC4I+FHJyvIvl1cncO0=
Subject: Re: Yocto on OnBoard Intel Galileo Flash
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: chris@2net.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Apr 2019 11:18:48 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

Hi Nick,

The Galileo board has 8 MiB of NOR flash connected via SPI. That is not
enough for any meaningful embedded Linux image created by Yocto Project.
Even if you were to build an image less than 8 MiB, it still wouldn't
help because the Galileo needs that memory for the UEFI boot loader.

There is a very good write up of the way the Quark chip boots here:

"Anatomy of the UEFI Boot Sequence on the Intel Galileo"
http://blog.hansenpartnership.com/anatomy-of-the-uefi-boot-sequence-on-the-intel-galileo/

And there is a guide on how to write a new UEFI loader to the SPI flash
here:
"Programming SPI Flash with UEFI Internal Shell for Intel® Galileo Boards"
http://www.intel.co.uk/content/www/uk/en/support/boards-and-kits/intel-galileo-boards/000006212.html

Cheers,
Chris

On 30/03/2019 22:33, nick wrote:
> Greetings All,
> 
> What is the best way to put a image on the 8mb of Yocto onboard flash or is
> this not possible with the Yocto Project.
> 
> Nick
> 


-- 
Chris Simmonds, trainer and consultant at 2net
http://www.2net.co.uk
Author of "Mastering Embedded Linux Programming"

