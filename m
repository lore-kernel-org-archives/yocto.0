Return-Path: <eas@sw-optimization.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 640A9E00BE8; Thu, 14 Feb 2019 00:30:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [81.19.149.136 listed in list.dnswl.org]
Received: from mx26lb.world4you.com (mx26lb.world4you.com [81.19.149.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60F15E00B92
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 00:30:47 -0800 (PST)
Received: from [81.19.149.44] (helo=webmail.world4you.com)
	by mx26lb.world4you.com with esmtpa (Exim 4.91)
	(envelope-from <eas@sw-optimization.com>)
	id 1guCPu-0003XD-P6; Thu, 14 Feb 2019 09:30:46 +0100
MIME-Version: 1.0
Date: Thu, 14 Feb 2019 09:30:46 +0100
From: Eric Schwarz <eas@sw-optimization.com>
To: "Bach, Pascal" <pascal.bach@siemens.com>
In-Reply-To: <355BE46A91031048906B695426A8D8E61C3DF156@DENBGAT9EL2MSX.ww902.siemens.net>
References: <40b1945719475701252bad02ee39be4d@sw-optimization.com>
	<355BE46A91031048906B695426A8D8E61C3DF156@DENBGAT9EL2MSX.ww902.siemens.net>
Message-ID: <c2c993d1567abb8698ca6012fcb238e3@sw-optimization.com>
X-Sender: eas@sw-optimization.com
User-Agent: World4You Webmail
X-SA-Do-Not-Run: Yes
X-AV-Do-Run: Yes
Cc: yocto@yoctoproject.org
Subject: Re: SDK install w/ CMake
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
X-List-Received-Date: Thu, 14 Feb 2019 08:30:50 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi Pascal

> I don't think your issue has something do to with CMake.

You are right IMHO. We checked again the pugixml installation behaviour 
and it turned out we are experiencing the same issue.

>> we have got the problem that w/ the Yocto recipe and CMake install 
>> targets
>> as below always everything (headers and library or binary
>> respectively) is installed in the SDK.
>> The binary also goes into the SDK even though we just add it to
>> IMAGE_INSTALL based on a XILINX yocto build (rel-v2018.3).
> 
> I'm not sure I understand what you are trying to do. If you add 
> something to IMAGE_INSTALL it gets installed to the target.
> That usually includes binaries and libraries.
> 
> If you only want libraries but not binaries it's probably best to split 
> them into multiple packages as described in 
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#package-splitting-dev-environment
> 
> This way you can have the binaries in a different package like 
> ${PN}-tools.
> 

We have not figured out on how to add the build artifacts of the library 
to the the correct FILES_${PN} variables. It seems that the FILES_${PN} 
variables are also kind of overlayed [1].

a) We would like to see the *.so of the library only on the RootFS but 
the headers, the *.so and the *.a in the SDK.
b) We are trying to install a binary via FILES_${PN} but it also ends up 
in the SDK no matter what.

A colleague also posted the question on stackoverflow [2] which 
describes it more verbosely.

The Yocto release is rocko based.

Thanks
Eric

[1] 
https://stackoverflow.com/questions/35090669/bitbake-packaging-strangeness
[2] https://stackoverflow.com/q/54569314/10921299

