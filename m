Return-Path: <sruetzler@arigo-software.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9198CE00C5B; Tue, 22 Dec 2015 02:45:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.237.132.60 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from wp053.webpack.hosteurope.de (wp053.webpack.hosteurope.de
	[80.237.132.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 204C6E00825
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 02:45:23 -0800 (PST)
Received: from p5486940c.dip0.t-ipconnect.de ([84.134.148.12]
	helo=[192.168.90.7]); authenticated
	by wp053.webpack.hosteurope.de running ExIM with esmtpsa
	(TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	id 1aBKRX-0001h0-38; Tue, 22 Dec 2015 11:45:23 +0100
To: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
References: <56791A82.7050809@arigo-software.de>
	<20151222123843.1f35df99@adi-pc-linux>
From: Simon Ruetzler <sruetzler@arigo-software.de>
Message-ID: <567929CD.9030604@arigo-software.de>
Date: Tue, 22 Dec 2015 11:45:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <20151222123843.1f35df99@adi-pc-linux>
X-bounce-key: webpack.hosteurope.de; sruetzler@arigo-software.de; 1450781124;
	90fd3ce6; 
Cc: yocto@yoctoproject.org
Subject: Re: yocto package naming
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
X-List-Received-Date: Tue, 22 Dec 2015 10:45:25 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hello,
the demo package is the first package. I clear the list with PACKAGES = ""
They package should contain this files, this is not the problem.
The problem is the resulting package name. The name should be 
rumo-cpp-demo-1.0rc... and not libscom1-1.0-rc...
Regards Simon

Am 22.12.2015 um 11:38 schrieb Ioan-Adrian Ratiu:
> Hi
>
> On Tue, 22 Dec 2015 10:40:18 +0100
> Simon Ruetzler <sruetzler@arigo-software.de> wrote:
>
>> Hello,
>> I want to create different packages from one recipe.
>>
>> This is working except for one package.
>> I addes this package with
>> PACKAGES += " ${PN}-demo"
>> and I expected that it is named with the recipe name and demo. In this
>> case rumo-cpp-demo-1.0-rc...
>> But the name is libscom1-1.0-rc..
>>
>> The demo package contains the files for a dynamic library: libscom.so,
>> libscom.so.1 and libscom.so.1.5.0
>> and this library name is automatically used for the package name.
>>
>> For the other packages the name are as expected. All package are defined
>> in the same way except that FILES_.. definition is different.
>> This packages also have dynamic libs but only the libname.so.1 files and
>> the libname.so as a link.
>>
>> Why is the demo package created with the libscom name? How can I disable
>> this?
> Maybe the contents of ${PN}-demo get gobbled up by another package defined
> before it in PACKAGES? The order of the contents of var PACKAGES matters:
> it defines precedence, the first package to match a file includes it.
>
> Try prepending to PACKAGES, something like this:
> PACKAGES =+ "${PN}-demo "
>
>> Regards Simon
>


