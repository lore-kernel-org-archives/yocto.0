Return-Path: <ml@communistcode.co.uk>
Received: from owm.eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53C13E014A5
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 05:17:54 -0700 (PDT)
Message-ID: <51ADDAF0.6070608@communistcode.co.uk>
Date: Tue, 04 Jun 2013 13:17:52 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAMUsWmCC5JS81SPA_dfmsfqmBis7fAVAbMGc5yuZVHW0RnTDXQ@mail.gmail.com>
In-Reply-To: <CAMUsWmCC5JS81SPA_dfmsfqmBis7fAVAbMGc5yuZVHW0RnTDXQ@mail.gmail.com>
Subject: Re: yocto - lbcm3m1 camera driver source code
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 04 Jun 2013 12:17:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/06/13 13:05, Akshay Sahota wrote:
> Hi all,
>
> Can anyone provide me with the complete driver source code for Leopard
> Imaging camera module lbcm3m1...??
>
> Thanks in anticipation
> --
> *Akshay Sahota**
> *Fourth Year Undergraduate
> Department of Electronics & Electrical Engineering
> Indian Institute of Technology Kharagpur
>
>

The chip used on that module is apparently mt9t112, so this is the 
source code.

http://lxr.free-electrons.com/source/drivers/media/i2c/soc_camera/mt9t112.c

Please note, this is not really the place for such questions, or 
homework assignments...

Good luck.

Jack.


-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--

