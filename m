Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21F95E00D33; Tue, 10 Jul 2018 00:38:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08D10E00903
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 00:38:41 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Jul 2018 00:38:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,333,1526367600"; d="scan'208";a="214775067"
Received: from pgsmsx103.gar.corp.intel.com ([10.221.44.82])
	by orsmga004.jf.intel.com with ESMTP; 10 Jul 2018 00:38:39 -0700
Received: from pgsmsx109.gar.corp.intel.com (10.221.44.109) by
	PGSMSX103.gar.corp.intel.com (10.221.44.82) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Tue, 10 Jul 2018 15:38:37 +0800
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.4]) by
	PGSMSX109.gar.corp.intel.com ([169.254.14.206]) with mapi id
	14.03.0319.002; Tue, 10 Jul 2018 15:38:37 +0800
From: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
To: =?iso-8859-1?Q?Martin_Hundeb=F8ll?= <martin@geanix.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Burton, Ross"
	<ross.burton@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>
Thread-Topic: [yocto] [PATCH] [yocto-autobuilder] master.cfg: Defaults
	autobuilder URL based on FQDN
Thread-Index: AQHUF/yvTP4jfefbqUOICjNU6k3liaSHc1AAgACTIYf//36xgIAAi5qo
Date: Tue, 10 Jul 2018 07:38:36 +0000
Message-ID: <AA9B40170ABA1047B45E714CB2B866B7068FF5E4@PGSMSX103.gar.corp.intel.com>
References: <1531192694-10351-1-git-send-email-aaron.chun.yew.chan@intel.com>
	<e26b7285-187b-c768-3490-af62f61ee78c@geanix.com>
	<AA9B40170ABA1047B45E714CB2B866B7068FF5CC@PGSMSX103.gar.corp.intel.com>,
	<cf934fad-82cd-2aa6-f3e7-a1c0a72a49a3@geanix.com>
In-Reply-To: <cf934fad-82cd-2aa6-f3e7-a1c0a72a49a3@geanix.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.139]
MIME-Version: 1.0
Subject: Re: [PATCH] [yocto-autobuilder] master.cfg: Defaults autobuilder URL based on FQDN
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
X-List-Received-Date: Tue, 10 Jul 2018 07:38:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Martin,

My initial concern was that `os.path.join()` was meant for OS
independent path concatenation, and not constructing URLs.

My two first points still stand, though... Why not just
string-concatenate the separate parts; i.e.

url =3D 'http://' + socket.getfqdn() + ':' + str(config.web_port) + '/'

[Reply] You have a valid point, however in this case seems like os.path.joi=
n() doesn't seem to construct a path. It's a bug.=20
            Will send a new patch on this one. Thanks for reviewing it.

Cheers,
Aaron
________________________________________
From: Martin Hundeb=F8ll [martin@geanix.com]
Sent: Tuesday, July 10, 2018 3:14 PM
To: Chan, Aaron Chun Yew; richard.purdie@linuxfoundation.org; yocto@yoctopr=
oject.org; Burton, Ross; Eggleton, Paul
Subject: Re: [yocto] [PATCH] [yocto-autobuilder] master.cfg: Defaults autob=
uilder URL based on FQDN

Hi Aaron,

On 2018-07-10 08:59, Chan, Aaron Chun Yew wrote:
> My name is Aaron and not Aron for start

Sorry about that.

> Martin,
>
> Please try this
>
> #!/usr/bin/env python2
>
> import os
>
> a =3D os.path.join('http://', 'alibaba.com')
> b =3D '/'.join(['http://', 'alibaba.com'])
> c =3D '/'.join(['http:/', 'alibaba.com', ''])
>
> print(a)
> print(b)
> print(c)
>
> and repeat the same for python3, I got the following results:
>
> http://alibaba.com
> http:///alibaba.com
> http://alibaba.com/

I see, thanks for clarifying.

My initial concern was that `os.path.join()` was meant for OS
independent path concatenation, and not constructing URLs.

My two first points still stand, though... Why not just
string-concatenate the separate parts; i.e.

url =3D 'http://' + socket.getfqdn() + ':' + str(config.web_port) + '/'

But I won't stand in the way of the patch for such a stylish point, so
feel free to ignore it :)

// Martin

> Cheers,
> Aaron
> ________________________________________
> From: Martin Hundeb=F8ll [martin@geanix.com]
> Sent: Tuesday, July 10, 2018 2:10 PM
> To: Chan, Aaron Chun Yew; richard.purdie@linuxfoundation.org; yocto@yocto=
project.org; Burton, Ross; Eggleton, Paul
> Subject: Re: [yocto] [PATCH] [yocto-autobuilder] master.cfg: Defaults aut=
obuilder URL based on FQDN
>
> Hi Aron,
>
> On 2018-07-10 05:18, Aaron Chan wrote:
>> This patch is to enable auto-assignments buildbot URL based on Hosts FQD=
N.
>> The socket module allows the retrieval on FQDN and constructs the entire
>> URL by default, this default settings can be overwritten in c['buildbotU=
RL']
>> based on local administrator preferences.
>>
>> Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
>> ---
>>    master.cfg | 7 +++++--
>>    1 file changed, 5 insertions(+), 2 deletions(-)
>>
>> diff --git a/master.cfg b/master.cfg
>> index fca80d2..49ddeb4 100644
>> --- a/master.cfg
>> +++ b/master.cfg
>> @@ -4,6 +4,7 @@
>>    import os
>>    import imp
>>    import pkg_resources
>> +import socket
>>
>>    from buildbot.plugins import *
>>    from buildbot.plugins import db
>> @@ -55,6 +56,7 @@ imp.reload(services)
>>    imp.reload(www)
>>
>>    c =3D BuildmasterConfig =3D {}
>> +url =3D os.path.join('http://', socket.getfqdn() + ':' + str(config.web=
_port) + '/')
>
> Why use `os.path.join()` here? It isn't supposed to be used to construct
> url's, and is overkill for this case, and you'd end up with "http:///..."=
.
>
> // Martin
>
>>
>>    # Disable usage reporting
>>    c['buildbotNetUsageData'] =3D None
>> @@ -76,6 +78,7 @@ c['www'] =3D www.www
>>    c['workers'] =3D workers.workers
>>
>>    c['title'] =3D "Yocto Autobuilder"
>> -c['titleURL'] =3D "https://autobuilder.yoctoproject.org/main/"
>> +c['titleURL'] =3D url
>>    # visible location for internal web server
>> -c['buildbotURL'] =3D "https://autobuilder.yoctoproject.org/main/"
>> +# - Default c['buildbotURL'] =3D "https://autobuilder.yoctoproject.org/=
main/"
>> +c['buildbotURL'] =3D url
>>
>
> --
> Kind regards,
> Martin Hundeb=F8ll
> Embedded Linux Consultant
>
> +45 61 65 54 61
> martin@geanix.com
>
> Geanix IVS
> DK39600706
>

--
Kind regards,
Martin Hundeb=F8ll
Embedded Linux Consultant

+45 61 65 54 61
martin@geanix.com

Geanix IVS
DK39600706

