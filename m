Return-Path: <opensource@keylevel.com>
Received: from hosting.adsl24.co.uk (hosting.adsl24.co.uk [84.234.17.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AF75E00865
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 11:55:00 -0800 (PST)
Received: from [109.224.171.0] (port=21062
	helo=macbook-pro.durham.keylevel.com)
	by hosting.adsl24.co.uk with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.82) (envelope-from <opensource@keylevel.com>)
	id 1WKYwz-0001rV-5x; Mon, 03 Mar 2014 19:54:57 +0000
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAJTo0LYPv3WMjkW8-QWhzBx7SK6p7My4_jA40bS1aG8D46MuiQ@mail.gmail.com>
Date: Mon, 3 Mar 2014 19:54:55 +0000
Message-Id: <4C4E8456-172D-4459-9BCC-F381FE675285@keylevel.com>
References: <FF9E7E89-95A5-4383-8BAF-35B201407F20@keylevel.com>
	<CAP71Wjxm7c0LoeHFQ+xPOcgbs4P5i2RRg0TJSGmWfe1xm4-mkw@mail.gmail.com>
	<CAJTo0LYPv3WMjkW8-QWhzBx7SK6p7My4_jA40bS1aG8D46MuiQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.1874)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hosting.adsl24.co.uk
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: hosting.adsl24.co.uk: authenticated_id:
	mail@keylevel.adsl24.co.uk
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Package 'X' provides... what?
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
X-List-Received-Date: Mon, 03 Mar 2014 19:55:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 3 Mar 2014, at 12:17, Burton, Ross <ross.burton@intel.com> wrote:

> On 3 March 2014 07:10, Nicolas Dechesne <nicolas.dechesne@linaro.org> =
wrote:
>>> How do I find out what (e.g.) gstreamer1.0-plugins-base.bb actually =
provides? Once I've got it to build for one plugin I can go to the work =
directory to see what gets packaged to find the names of other plugins, =
but I can't find a way in to start with. Is there some bitbake magic I =
can use to list what's provided by a recipe?
>>=20
>> you can try:
>>=20
>> bitbake -e gstreamer1.0-plugins-base | grep ^PACKAGES
>>=20
>> basically, you are looking for the content of the variable 'PACKAGES'

I tried that, but nothing shows.

>=20
> Note that for situations such as this you won't find
> PACKAGES=3Dgstreamer1.0-plugins-base-playbin anywhere as the set of
> plugins that a recipe can build is dynamic .  There'll be a
> PACKAGES_DYNAMIC=3Dgstreamer1.0-plugins-* statement that tells bitbake
> it will provide a set of packages matching a glob, but that's all.  No
> way of going from -plugins-playbin to the gstreamer1.0-plugins-base.

Ah, that's why ;-)

I've switched to a different version =
(https://github.com/dv1/meta-gstreamer1.0) and the README file on there =
gave me what I need to work out the packages names.

Thanks all :-)

Chris Tapp

opensource@keylevel.com
www.keylevel.com




