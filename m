Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33823E01465
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2013 10:03:56 -0800 (PST)
Received: from cpc8-live22-2-0-cust106.know.cable.virginmedia.com
	([82.42.168.107] helo=[127.0.0.1])
	by www.dynamicdevices.co.uk with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32) (Exim 4.69)
	(envelope-from <ajlennon@dynamicdevices.co.uk>)
	id 1TsGzH-0002q8-Cq; Mon, 07 Jan 2013 17:59:51 +0000
Message-ID: <50EB0DFD.3030007@dynamicdevices.co.uk>
Date: Mon, 07 Jan 2013 18:03:41 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <50E31E11.2090708@comcast.net>
	<50E73A16.4070303@dynamicdevices.co.uk>
	<50EA5C2E.9060701@comcast.net>
	<50EAB28F.6080506@dynamicdevices.co.uk>
	<alpine.DEB.2.02.1301071251510.1319@oneiric>
In-Reply-To: <alpine.DEB.2.02.1301071251510.1319@oneiric>
Cc: yocto@yoctoproject.org, ed nelson <enelson1000@comcast.net>
Subject: Re: Raspberry Pi do_fetch failure
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
X-List-Received-Date: Mon, 07 Jan 2013 18:03:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/01/2013 17:53, Robert P. J. Day wrote:
> fatal: The remote end hung up unexpectedly
> fatal: early EOF
> fatal: index-pack failed

fwiw there's a note here which relates to Cygwin:

http://stackoverflow.com/questions/2505644/git-checking-out-problem-fatal-early-eofs

I wonder if it might be worth trying the compression setting to see if
that helps (less than ideal I know)

git config --add core.compression -1

Cheers,

Alex


