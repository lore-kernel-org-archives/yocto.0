Return-Path: <sflowers1@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64100E0095F; Tue, 10 Feb 2015 05:06:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sflowers1[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71DDEE0094C
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 05:06:40 -0800 (PST)
Received: by iery20 with SMTP id y20so15952366ier.9
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 05:06:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=5gNQzTiaBAx0z9omqpX2+Bil2A9mwYvCiLtUaBVJRqM=;
	b=mBcSVi1Tqq1OncBpa7aVBnqo8y4V9VLHOXrFDpLLyT9ANp8sk7529L/Ow5HB3TjoiP
	oY4l+SFfankNbODIOEAm8RWu44af3851PUDgRAoDT8oKrU28YP7yuOODQItgxqbCAwNj
	CXzPmROp3DiHiHAjbVsNiM56iRED+TQR6fyhAJ/HwQzlJ3WDd8SYHTwuvgHGq7cCS0C5
	VylWhz2lAiPvAltpKIKNkwScgdkehBJjwqlDjzyVKcLLPyB89iJ5iCj/V3PA51JqVgz8
	S68uNsL+Zm8q7Am/PzIk6Pods/KjE7y4eLxxc9JTrhKoLi1qG74y7WVFMHdvpCBdnynI
	kIxQ==
X-Received: by 10.107.164.92 with SMTP id n89mr22085753ioe.82.1423573600003;
	Tue, 10 Feb 2015 05:06:40 -0800 (PST)
Received: from [10.158.50.128] ([89.191.218.226])
	by mx.google.com with ESMTPSA id aw9sm7780600igc.18.2015.02.10.05.06.38
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 10 Feb 2015 05:06:39 -0800 (PST)
Message-ID: <54DA0258.9070108@gmail.com>
Date: Tue, 10 Feb 2015 13:06:32 +0000
From: Stephen Flowers <sflowers1@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Yocto Realtime tests on beaglebone black
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
X-List-Received-Date: Tue, 10 Feb 2015 13:06:45 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi All,

I have built the realtime kernel using Yocto and deployed on the 
beaglebone black (specifically core-image-rt-sdk).  I have written a 
program to test the timer latency and interrupt latency of userspace 
applications.  For this I'm using a simple timerfd to generate a 
periodic 10ms gpio toggle which itself acts as a gpio interrupt on 
another gpio pin.
I find the latency is much worse on the preempt_rt kernel than the 
standard one.  RT kernel gives around 220us average with the standard 
kernel about 80us.  Testing with Xenomai gives about 60us. The response 
times are measured with an external logic analyser, and taken with no 
other load on the system.  Kernel version is 3.14.

The difference between standard and RT kernel configs:
Preemption model: desktop vs. realtime kernel
Timer: 100Hz vs 1000Hz
High resolution timers disabled

I'm having a hard time figuring out why the RT kernel gives worse 
latency.  Anyone have any insight into this?
Included the source code below.

Thanks & Regards,
Steve

#include<sys/time.h>
#include<time.h>
#include<sys/types.h>
#include <signal.h>
#include <stdlib.h>
#include <stdio.h>
#include <sched.h>
#include <sys/mman.h>
#include "poll.h"
#include "fcntl.h"
#include "string.h"
#include "errno.h"
#include <sys/timerfd.h>

#define TIMER_OUT_PATH     "/sys/class/gpio/gpio47"
#define LED_OUT_PATH     "/sys/class/gpio/gpio26"
#define IRQ_IN_PATH     "/sys/class/gpio/gpio46"

static int timer_toggle = 0;
static int output_toggle = 0;

void stack_prefault(void)
{
     unsigned char dummy[8192];
     memset(dummy, 0, 8192);
}


int main(int argc, char* argv[])
{
    struct itimerspec itv;
    unsigned long long timer_increment = 0;

    clock_t prevClock;
    int sigCnt = 0;
    struct sigaction sa;
    struct sched_param sp;

    struct pollfd fdset[2];
    int fd_in;
    int action;
    int fd_led;
    int fd_timer_out;
    int fd_timer_in;

    char buf[2];
    int len;

    // setup gpio
    if(system("echo 46 > /sys/class/gpio/export") == -1)
         perror("unable to export gpio 46");

    if(system("echo 47 > /sys/class/gpio/export") == -1)
         perror("unable to export gpio 47");

    if(system("echo 26 > /sys/class/gpio/export") == -1)
         perror("unable to export gpio 26");

    // timer out
    if(system("echo out > /sys/class/gpio/gpio47/direction") == -1)
         perror("unable to set 47 to output");

     // led out
     if(system("echo out > /sys/class/gpio/gpio26/direction") == -1)
         perror("unable to set 26 to output");

     // irq in
     if(system("echo in > /sys/class/gpio/gpio46/direction") == -1)
         perror("unable to set 46 to input");

     if(system("echo both > /sys/class/gpio/gpio46/edge") == -1)
         perror("unable to set 46 edge");

     // set scheduling parameters
     sp.sched_priority = sched_get_priority_max(SCHED_FIFO);
     if(sched_setscheduler(0, SCHED_FIFO, &sp) == -1)
     {
         perror("setscheduler");
         exit(-1);
     }

     // lock memory
     if(mlockall(MCL_CURRENT|MCL_FUTURE) == -1)
         perror("mlockall");

     stack_prefault();

    // Set up timer
     fd_timer_in = timerfd_create(CLOCK_MONOTONIC, TFD_NONBLOCK);
     printf("fd_timer:%d\n",fd_timer_in);

     if(fd_timer_in < 0)
     {
         perror("timerfd_create()");
     }

    itv.it_value.tv_sec = 0;
    itv.it_value.tv_nsec = 10000000;
    itv.it_interval.tv_sec = 0;
    itv.it_interval.tv_nsec = 10000000;
    if(-1 == timerfd_settime(fd_timer_in, 0, &itv, NULL))
    {
        perror("settime()");
    }

    // setup file descriptor for poll()
    fd_in = open(IRQ_IN_PATH "/value", O_RDONLY | O_NONBLOCK);
    printf("fd irq input:%d\n",fd_in);

    if(fd_in < 0)
    {
        perror("file open problem");
        exit(0);
    }

    while(1)
    {
         memset((void*)fdset, 0, sizeof(fdset));
         fdset[0].fd = fd_in;
         fdset[0].events = POLLPRI | POLLERR;
         fdset[0].revents = 0;

         fdset[1].fd = fd_timer_in;
         fdset[1].events = POLLIN | POLLERR;
         fdset[1].revents = 0;
         action = poll(fdset, 2, -1);

         if(action < 0)
         {
             if(errno == EINTR)
             {
                 // when signal interrupts poll, we poll again
                 continue;
             }
             else
             {
                 perror("poll failed");
                 exit(0);
             }
         }

         if(fdset[1].revents & POLLIN)
         {
             //len = read(fdset[1].fd, 0, SEEK_SET);
             len = read(fdset[1].fd, &timer_increment, 
sizeof(timer_increment));

             fd_timer_out = open( TIMER_OUT_PATH "/value", O_WRONLY);

            if(timer_toggle ^= 1)
            {
                write(fd_timer_out, "1", 2);
            }
            else
            {
                write(fd_timer_out, "0", 2);
            }

            close(fd_timer_out);
         }

         if(fdset[0].revents & POLLPRI)
         {
             lseek(fdset[0].fd, 0, SEEK_SET);    // read from start of file
             len = read(fdset[0].fd, buf, sizeof(buf));

             fd_led = open( LED_OUT_PATH "/value", O_WRONLY | O_NONBLOCK);

             if(buf[0] == '1')
             {
                 write(fd_led, "1", 2);
             }
             else
             {
                 write(fd_led, "0", 2);
             }

             close(fd_led);
         }
     }

    close(fd_in);
    close(fd_timer_in);
    close(fd_led);
    printf("finished\n");
    return 0;
}






