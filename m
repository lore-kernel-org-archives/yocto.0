Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 36A3EE011B1
	for <yocto@yoctoproject.org>; Sun, 20 Oct 2013 06:39:21 -0700 (PDT)
Received: (qmail 16486 invoked by uid 1003); 20 Oct 2013 13:39:20 -0000
Received: from unknown (HELO ?192.168.1.103?) (philip@opensdr.com@108.44.88.68)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	20 Oct 2013 13:39:19 -0000
Message-ID: <5263DD06.1050309@balister.org>
Date: Sun, 20 Oct 2013 09:39:18 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130625 Thunderbird/17.0.7
MIME-Version: 1.0
To: Edward Vidal <vidal.develone@gmail.com>
References: <CANwz6nzVxrMqvM19MfT8AFD0NvWCuYDitSQTJon-YHMZ_8d01Q@mail.gmail.com>
In-Reply-To: <CANwz6nzVxrMqvM19MfT8AFD0NvWCuYDitSQTJon-YHMZ_8d01Q@mail.gmail.com>
X-Enigmail-Version: 1.5.2
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: threads set in local.conf
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
X-List-Received-Date: Sun, 20 Oct 2013 13:39:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 10/19/2013 08:59 AM, Edward Vidal wrote:
> Hello all,
> Is this loading what others on a similar system are experiencing (see
> below)?
> 
> I first was setting my threads to 6 on a AMD 6 core system.
> In the mega-manual i found
> 5.4. Configuring the local.conf File
> 
> Briefly, set BB_NUMBER_THREADS and PARALLEL_MAKE to twice your host
> processor's number of cores.
> 
> I am creating an image with 8017 tasks for the beagleboard.
> I set threads to 12 and now the build is proceeding much more rapid than
> when threads were set to 6.  In 30 minutes the build has completed 2435
> tasks or about 25%.
> I am seeing a fairly high load 35. 30. 24 and the fan is been at high speed
> since the build  started.  The system has 8G of memory and now it is using
> and it was using about  13800 of swap space.
> 
> Any and all help will be appreciated.

I'm not sure what problem you are trying to solve here.

I'd suggest adding more RAM though, that will ease the disk usage.

Philip


> Thanks
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 

