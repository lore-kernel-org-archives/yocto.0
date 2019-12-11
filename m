Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.15.1576043108163025072
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Dec 2019 21:45:08 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: changqing.li@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B46BAE01149; Tue, 10 Dec 2019 21:45:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87C1EE0049C
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2019 21:45:06 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xBB5j4sZ014449
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 10 Dec 2019 21:45:04 -0800 (PST)
Received: from [128.224.162.189] (128.224.162.189) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 10 Dec
 2019 21:45:03 -0800
Subject: Re: [yocto] [error-report-web][PATCH V2] Add local.conf and auto.conf into error details
To: Paul Eggleton <paul.eggleton@linux.intel.com>
CC: <yocto@yoctoproject.org>
References: <1573547573-352969-1-git-send-email-changqing.li@windriver.com>
 <9315981.NtHHCumI8A@shodan>
From: "Changqing Li" <changqing.li@windriver.com>
Message-ID: <5af91cd5-9249-e236-480b-fb3b4962bc0b@windriver.com>
Date: Wed, 11 Dec 2019 13:45:00 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <9315981.NtHHCumI8A@shodan>
X-Originating-IP: [128.224.162.189]
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable


On 11/13/19 6:36 PM, Paul Eggleton wrote:
> Hi Changqing,
>
> Some comments below.
>
> On Tuesday, 12 November 2019 9:32:53 PM NZDT changqing.li@windriver.com=
 wrote:
>> From: Changqing Li <changqing.li@windriver.com>
>>
>> Support to display local.conf and auto.conf on error report web.
>> Here is commit in oe-core, which add local.conf/auto.conf into error r=
eport
>> https://git.openembedded.org/openembedded-core/commit/?id=3D7adf9707c0=
4d8ef6bcd8d8bda555687f705e6ee6
>>
>> This commit is related to YOCTO #13252
>>
>> Signed-off-by: Changqing Li <changqing.li@windriver.com>
>> ---
>>   Post/0006_auto_20190917_0419.py | 24 ++++++++++++++++++++++++
>>   Post/models.py                  |  2 ++
>>   Post/parser.py                  |  2 ++
>>   Post/test.py                    |  2 ++
>>   templates/error-details.html    | 10 ++++++++++
>>   test-data/test-payload.json     |  4 +++-
>>   6 files changed, 43 insertions(+), 1 deletion(-)
>>   create mode 100644 Post/0006_auto_20190917_0419.py
>>
>> diff --git a/Post/0006_auto_20190917_0419.py b/Post/0006_auto_20190917=
_0419.py
>> new file mode 100644
>> index 0000000..827944e
>> --- /dev/null
>> +++ b/Post/0006_auto_20190917_0419.py
> Could you please give the migration a proper name (-n option to makemig=
rations) e.g. local_conf_auto_conf
OK, thanks
>
>> --- a/Post/models.py
>> +++ b/Post/models.py
>> @@ -43,6 +43,8 @@ class Build(models.Model):
>>       LINK_BACK =3D models.TextField(max_length=3D300, blank=3DTrue, n=
ull=3DTrue)
>>       ERROR_TYPE =3D models.CharField(max_length=3D20, choices=3DERROR=
_TYPE_CHOICES,
>>                                     default=3DErrorType.RECIPE)
>> +    LOCAL_CONF =3D models.TextField(max_length=3Dint(settings.MAX_UPL=
OAD_SIZE), default=3D"")
>> +    AUTO_CONF =3D models.TextField(max_length=3Dint(settings.MAX_UPLO=
AD_SIZE), default=3D"")
> I'm not sure this is practical, for two reasons:
>
> 1) Field sizes should not be variable like this; changing the MAX_UPLOA=
D_SIZE value after the fact would not change the database structure
> 2) The value could never actually reach MAX_UPLOAD_SIZE because the ove=
rhead of the surrounding JSON would block it from being uploaded if it di=
d
>
> However, since this is a TextField we don't actually have to specify a =
max_length (for a TextField max_length only actually affects the frontend=
, and we don't expose this field in a form) so it can just be removed.
>
> Another thing, instead of default=3D"" you should use blank=3DTrue.
OK,=C2=A0 I will fix this.
>
>
>> +        {% if detail.BUILD.LOCAL_CONF !=3D "" %}
>> +        <dt></a>Local Conf:</dt>
>> +        <dd style=3D"white-space: pre-wrap;">{{ detail.BUILD.LOCAL_CO=
NF | safe }}</dd>
>> +        {% endif %}
>> +
>> +        {% if detail.BUILD.AUTO_CONF !=3D "" %}
>> +        <dt></a>Auto Conf:</dt>
>> +        <dd style=3D"white-space: pre-wrap;">{{ detail.BUILD.AUTO_CON=
F | safe }}</dd>
>> +        {% endif %}
> We cannot use the safe filter here - doing so could open up an XSS vuln=
erability, since anyone can upload anything to the error-report applicati=
on and the content could include links or other malicious HTML data. We s=
hould allow it to be auto-escaped. Is there a particular issue you were u=
sing this to solve?

This is for resolve a problem when there is angle brackets in=20
local.conf/auto.conf.

I have a patch in oe-core [OE-core] [PATCH] report-error.bbclass:=20
replace angle brackets with &lt; and &gt;]

when we have below content in local.conf or auto.conf:
BUILDHISTORY_COMMIT_AUTHOR ?=3D "Khem Raj<raj.khem@gmail.com>"
send-error-report will fail with "HTTP Error 500: OK"

error-report-web do rudimentary check on all fields that are
passed to the graphs page to avoid any XSS happening, if contains
'<', the server will return error(Invalid characters in json).
fixed by use escape of <> to replace it.

NOTE: with this change, error-report-web need to add filter 'safe'
for the string wanted to display to avoid further HTML escaping
prior to output. Below is how the content displayed on webpage:
with the filter 'safe':
BUILDHISTORY_COMMIT_AUTHOR ?=3D "Khem Raj<raj.khem@gmail.com>"
without the filter 'safe':
BUILDHISTORY_COMMIT_AUTHOR ?=3D "Khem Raj &lt;raj.khem@gmail.com&gt;"

Do you have good idea to resolve this? Thanks.

>
> Cheers
> Paul
>
