Return-Path: <clay@montgomery1.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28B53E00A6B; Sat, 25 Jul 2015 08:37:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [69.89.20.122 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 396 seconds by postgrey-1.32 at yocto-www;
	Sat, 25 Jul 2015 08:36:56 PDT
Received: from gproxy9-pub.mail.unifiedlayer.com
	(gproxy9-pub.mail.unifiedlayer.com [69.89.20.122])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id DBD3FE0049B
	for <yocto@yoctoproject.org>; Sat, 25 Jul 2015 08:36:56 -0700 (PDT)
Received: (qmail 20011 invoked by uid 0); 25 Jul 2015 15:30:15 -0000
Received: from unknown (HELO cmgw3) (10.0.90.84)
	by gproxy9.mail.unifiedlayer.com with SMTP; 25 Jul 2015 15:30:15 -0000
Received: from box858.bluehost.com ([69.195.124.58]) by cmgw3 with 
	id wlWA1q00B1Fiqph01lWDT3; Sat, 25 Jul 2015 15:30:14 -0600
X-Authority-Analysis: v=2.1 cv=Qc314Krv c=1 sm=1 tr=0
	a=6215HlyIVfFolxfkGyTlSg==:117 a=6215HlyIVfFolxfkGyTlSg==:17
	a=cNaOj0WVAAAA:8
	a=f5113yIGAAAA:8 a=cwQF-0P1AAAA:8 a=xDn4ee4CKTYA:10 a=IkcTkHD0fZMA:10
	a=DpUQn3bY8hUA:10 a=F7vrFIpsXqIA:10 a=zOBTXjUuO1YA:10
	a=KXF5GlgIp31Em3opj_8A:9 a=QEXdDO2ut3YA:10
Received: from [70.119.214.20] (port=49316 helo=[192.168.0.18])
	by box858.bluehost.com with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.84) (envelope-from <clay@montgomery1.com>)
	id 1ZJ1Os-0000hZ-Ro
	for yocto@yoctoproject.org; Sat, 25 Jul 2015 09:30:10 -0600
To: yocto@yoctoproject.org
References: <3070750398d841b6866b97073c1bbeaa@nivm320.nibe.se>
	<loom.20150724T210947-218@post.gmane.org>
From: "Clay D. Montgomery" <clay@montgomery1.com>
Message-ID: <55B3AB8B.2060303@montgomery1.com>
Date: Sat, 25 Jul 2015 10:30:19 -0500
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <loom.20150724T210947-218@post.gmane.org>
X-Identified-User: {1231:box858.bluehost.com:montgor0:montgomery1.com}
	{sentby:smtp auth 70.119.214.20 authed with
	clay@montgomery1.com}
Subject: Re: Sftp deploy hangs when using dropbear and yocto fido.
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
X-List-Received-Date: Sat, 25 Jul 2015 15:37:00 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 7/24/2015 2:20 PM, Adam Sherman wrote:
> Måns Andersson <Mans.Andersson@...> writes:
>
>> Does anyone know about a problem with dropbear and openssh-sftp-server on
> Yocto Fido?
>> After upgrading my build from Dora to Fido the deployment of builds from
> QtCreator (3.2.2) to my qemuarm
>> build stopped working. It just hangs waiting as if it's working, i.e. no
> error message. I've switched
>> toolchains and emulator images from my Dora and Fido builds back and forth
> and the only common denominator
>> when it doesn't work is when using the Fido qemuarm build. Regular SSH
> connections and manual sftp
>> transfers (i.e. not initiated by Qt Creator) works, which just makes it
> even harder to debug.
>> Thanks in advance.
>> // Måns
>>
> Just to let you know, I have the same behavior with QtCreator (3.4.2) /
> trying to deploy on the Armadeus APF27 embedded Linux Arm Platform
> (Buildroot 2015.02 / Dropbear / openssh sftp server).
>
> Similarly, stand-alone sftp transfers outside of QtCreator work just fine.
>
> Adam Sherman

   I am curious why continue to use dropbear anyway?

   The openssh-sftp-server will likely work better with openssh than 
with dropbear.

  Openssh uses only about 3MB more per session than dropbear, which is 
small unless you need a lot of simultaneous sessions.
I think dropbear is a relic from when systems had less RAM.  Just 
curious.  Maybe I'm missing something.

Regards, Clay Montgomery

