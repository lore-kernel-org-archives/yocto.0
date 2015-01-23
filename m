Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18440E008DD; Fri, 23 Jan 2015 09:37:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E64FFE005A9
	for <yocto@yoctoproject.org>; Fri, 23 Jan 2015 09:37:14 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E35DDF81188; Fri, 23 Jan 2015 10:37:13 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 028DCF81188;
	Fri, 23 Jan 2015 10:37:13 -0700 (MST)
Message-ID: <54C286DC.2030708@mlbassoc.com>
Date: Fri, 23 Jan 2015 10:37:32 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <BAY169-W3CF94A018FE9CEDCFDA90AE360@phx.gbl>
In-Reply-To: <BAY169-W3CF94A018FE9CEDCFDA90AE360@phx.gbl>
Subject: Re: adding all the pieces of WiFi to core-image-minimal
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
X-List-Received-Date: Fri, 23 Jan 2015 17:37:26 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-01-23 10:24, Jim Abernathy wrote:
> I'm starting a project mostly for self-education.  I have already done the project using Ubuntu Server 14.04 using a Intel NUC and a Pandaboard as targets.  Now I want to see how
> easy it is to move it to Yocto.
>
> Starting with the NUC, I can boot Dizzy 1.7.1 core-image-minimal and core-image-sato, both built with bitbake and not the prebuilt images. However, core-image-minimal doesn't have
> WiFi and core-image-sato does, but I don't need all the GUI stuff.  It's a headless application.
>
> So what is recommended; eliminating the GUI from sato or adding wifi and wpa-supplicant, etc to minimal??  Also any pointers to how to do the adding/subtracting would be most helpful.
>
> Once this is working all I have to do is put apache-tomcat, and openjdk-7-jre, then my application.

We use just iw & wpa-supplicant and set up the configuration
files manually (e.g. the wpa-supplicant configurations).

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

