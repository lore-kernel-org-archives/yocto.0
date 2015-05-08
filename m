Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9C3BE009BB; Thu,  7 May 2015 22:17:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.invecas.com (mx1.invecas.com [112.133.222.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6088E00956
	for <yocto@yoctoproject.org>; Thu,  7 May 2015 22:16:59 -0700 (PDT)
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by mail.invecas.com
	(10.0.30.131) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Fri, 8 May 2015 10:44:19 +0530
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by
	SOC-EXCH-02.invecas.local (10.0.30.9) with Microsoft SMTP Server (TLS)
	id 15.0.995.29; Fri, 8 May 2015 10:44:08 +0530
Received: from SOC-EXCH-02.invecas.local ([::1]) by SOC-EXCH-02.invecas.local
	([fe80::bc3d:32eb:402d:2fae%15]) with mapi id 15.00.0995.028;
	Fri, 8 May 2015 10:44:08 +0530
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Issue with toaster
Thread-Index: AQHQiMPwlgqxDyEgoECjGg7s0AKjdZ1xiN4L
Date: Fri, 8 May 2015 05:14:08 +0000
Message-ID: <1431062039464.37764@inedasystems.com>
References: <D1711C04.5B1A6%belen.barros.pena@intel.com>
In-Reply-To: <D1711C04.5B1A6%belen.barros.pena@intel.com>
Accept-Language: en-US, en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.42.88]
MIME-Version: 1.0
Subject: Re: Issue with toaster
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
X-List-Received-Date: Fri, 08 May 2015 05:17:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Belen,=0A=
=0A=
I am using yocto fido.=0A=
=0A=
I am entered the my custom layer git repository url(Which is our local git =
repository where our product corresponding recipe layers re there),a unique=
 layer name and our git repository revision number.=0A=
=0A=
We entered these data but the import layer version is not respond.=0A=
=0A=
Thanks and Regards,=0A=
=0A=
Raghavendra K.=0A=
________________________________________=0A=
From: Barros Pena, Belen <belen.barros.pena@intel.com>=0A=
Sent: Thursday, May 7, 2015 6:17 PM=0A=
To: Raghavendra Kakarla; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Issue with toaster=0A=
=0A=
On 07/05/2015 10:18, "Raghavendra Kakarla"=0A=
<Raghavendra.Kakarla@inedasystems.com> wrote:=0A=
=0A=
>Hi,=0A=
>=0A=
>I have an issue while importing custom layer in toaster. When i gave the=
=0A=
>all layer information for importing the layer and click on the import=0A=
>layer button in toaster it    wont respond.=0A=
>Could you please help for resolving this issue.=0A=
=0A=
Hi Raghavendra,=0A=
=0A=
We would need a bit more information to understand what's happening:=0A=
=0A=
* Which branch are you using (fido or master). If you are using master,=0A=
which commit?=0A=
* Which data are you entering in the import layer form? Keep in mind that=
=0A=
you must provide a git url, a unique layer name and a revision. Without=0A=
that information, the "import layer" button will remain stubbornly=0A=
inactive and nothing will happen when you click on it.=0A=
=0A=
Cheers=0A=
=0A=
Bel=E9n=0A=
=0A=
>=0A=
>=0A=
>=0A=
>Thanks in advance.=0A=
>=0A=
>=0A=
> Regards,=0A=
> Raghavendra K.=0A=
>=0A=
=0A=

