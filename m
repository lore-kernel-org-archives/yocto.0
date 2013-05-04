Return-Path: <Ben.Warren@spidercloud.com>
Received: from berg.int.copivia.com (mailgate1.spidercloud.com [209.49.242.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4A8DE01470
	for <yocto@yoctoproject.org>; Fri,  3 May 2013 17:49:31 -0700 (PDT)
Received: from mailx.spidercloud.com ([10.1.1.225])
	by berg.int.copivia.com (8.13.8/8.13.8) with ESMTP id r440nSw0027343;
	Fri, 3 May 2013 17:49:28 -0700
Received: from sofia.us.spidercloud.com ([10.1.1.225]) by
	sofia.us.spidercloud.com ([10.1.1.225]) with mapi;
	Fri, 3 May 2013 17:49:28 -0700
From: Ben Warren <Ben.Warren@spidercloud.com>
To: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 3 May 2013 17:49:28 -0700
Thread-Topic: [yocto] Trouble integrating meta-virtualization
Thread-Index: Ac5IYTsx3qJpQGVUSA+WfZ96SnOagw==
Message-ID: <B9867B38-90A3-44F2-BC55-BAAE50BD6558@spidercloud.com>
References: <ABB6A20C-CB31-45DC-A74F-26424B52F84E@spidercloud.com>
	<CANyK_8cMUdVdMkEDpUhqxCy2-0HjnCZqoUVwiGpkT5ZVvH0zHg@mail.gmail.com>
In-Reply-To: <CANyK_8cMUdVdMkEDpUhqxCy2-0HjnCZqoUVwiGpkT5ZVvH0zHg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trouble integrating meta-virtualization
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
X-List-Received-Date: Sat, 04 May 2013 00:49:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


On May 3, 2013, at 5:35 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 4 May 2013 00:44, Ben Warren <Ben.Warren@spidercloud.com> wrote:
>> Hello,
>>=20
>> I'm trying to build an image using some components from meta-virtualizat=
ion,
>> and it's failing because it can't find many of the dependent modules.  I=
'm
>> posting this on the main yocto mailing list since it's more of a general
>> question of 'where are these things?'
>>=20
>=20
> Each layer should have a README file specifying its dependencies. See
> https://git.yoctoproject.org/cgit/cgit.cgi/meta-virtualization/tree/READM=
E
> or README in your local clone of the tree.
>=20
> In this case the layer seems to depend on meta-oe and meta-networking,
> both within the meta-openembedded group of layers.
>=20
> Hope this helps,
>=20
Yes it does.  Thank you very much.

regards,
Ben=

