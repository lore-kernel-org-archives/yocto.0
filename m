Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10F1DE008CD; Tue, 20 Jan 2015 17:29:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 87BFEE0086E
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 17:28:55 -0800 (PST)
Received: (qmail 21226 invoked by uid 1003); 21 Jan 2015 01:28:54 -0000
Received: from unknown (HELO ?192.168.1.124?)
	(philip@opensdr.com@108.44.84.240)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	21 Jan 2015 01:28:54 -0000
Message-ID: <54BF00D5.3000104@balister.org>
Date: Tue, 20 Jan 2015 20:28:53 -0500
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Benjamin Fleming <bfleming@meteorcomm.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <206093a14a0a41e78260f711393dfd79@MCCRENEX01.meteorcomm.lan>
In-Reply-To: <206093a14a0a41e78260f711393dfd79@MCCRENEX01.meteorcomm.lan>
Subject: Re: CMake in populate_sdk
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
X-List-Received-Date: Wed, 21 Jan 2015 01:29:06 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 01/20/2015 02:42 PM, Benjamin Fleming wrote:
> How do I add packages to the populate_sdk option? 
> I have an image (myimage) that depends on some custom packages which inherit the cmake bbclass. My expectation is that the populate_sdk task would notice that cmake is required for building and, as a result add cmake to the SDK. That is not the case. Also, for some reason, make is not included, either:
> 
> $ source /opt/poky/1.6.2/environment-setup-cortexa9hf-vfp-neon-poky-linux-gnueabi
> $ which automake
> /opt/poky/1.6.2/sysroots/x86_64-pokysdk-linux/usr/bin/automake
> $ which make
> usr/bin/make
> 
> What should I be adding to cause the inclusion of CMake in the SDK output? 

Something like this:

https://github.com/balister/meta-sdr/blob/master/recipes-images/images/native-sdk.inc

Philip

> 
> -Ben Fleming
> 

