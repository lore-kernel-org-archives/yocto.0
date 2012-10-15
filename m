Return-Path: <philip@balister.org>
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 2DF25E00292
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 12:29:13 -0700 (PDT)
Received: (qmail 11779 invoked by uid 1003); 15 Oct 2012 19:29:10 -0000
Received: from unknown (HELO ?10.16.24.66?) (philip@opensdr.com@157.22.28.10)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	15 Oct 2012 19:29:10 -0000
Message-ID: <507C6404.8060500@balister.org>
Date: Mon, 15 Oct 2012 12:29:08 -0700
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121009 Thunderbird/16.0
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <7618B2C1-D197-406D-B563-30E837399301@gmail.com>
	<CB6ED42E-986E-476C-9259-13602F3C0403@gmail.com>
In-Reply-To: <CB6ED42E-986E-476C-9259-13602F3C0403@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: meta-zynq-balister: Build output
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
X-List-Received-Date: Mon, 15 Oct 2012 19:29:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/13/2012 12:48 PM, Elvis Dowson wrote:
> Hi Philip,
>                    I've just sent out two patches refactoring the zc702 machine configuration, and adding u-boot to the rootfs image. I've built this against the latest poky/master branch.
>


I've applied these and tried to clean up the UBOOT_MACHINE setting.

Hopefully, all the right people can get on baord and we can get the 
multiple layer for the same thing issue resolved. In the meantime, work 
goes on.

Thanks,

Philip

> Best regards,
>
> Elvis Dowson
>

