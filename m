Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web09.5247.1578272558952820711
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jan 2020 17:02:39 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: changqing.li@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 00612Zk7010431
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Sun, 5 Jan 2020 17:02:35 -0800 (PST)
Received: from [128.224.162.189] (128.224.162.189) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Sun, 5 Jan
 2020 17:02:34 -0800
Subject: Re: [yocto] [error-report-web][PATCH V2] Add local.conf and auto.conf into error details
To: Khem Raj <raj.khem@gmail.com>,
        Paul Eggleton
	<paul.eggleton@linux.intel.com>
CC: <yocto@lists.yoctoproject.org>
References: <1573547573-352969-1-git-send-email-changqing.li@windriver.com>
 <9315981.NtHHCumI8A@shodan>
 <5af91cd5-9249-e236-480b-fb3b4962bc0b@windriver.com>
 <b0968d53-5b8b-c3dc-d0cd-07ab0e817f01@windriver.com>
 <CAMKF1sr-yXjSDwP-kby1u=iYUmMXa0wmYsDqau=smcTM_f+knA@mail.gmail.com>
From: "Changqing Li" <changqing.li@windriver.com>
Message-ID: <6b00037b-f162-21b7-c072-1e439acc8db7@windriver.com>
Date: Mon, 6 Jan 2020 09:02:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1sr-yXjSDwP-kby1u=iYUmMXa0wmYsDqau=smcTM_f+knA@mail.gmail.com>
X-Originating-IP: [128.224.162.189]
X-MIME-Autoconverted: from 8bit to quoted-printable by mail.windriver.com id 00612Zk7010431
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 1/5/20 5:06 AM, Khem Raj wrote:
> has this resolved on server side ? since I see that
> patch to report-error.bbclass is still not applied in
> oe-core

V2 patches is for resolve this problem,=C2=A0 and Paul have 3 comments.

so I need to send a V3 for fix the comments.=C2=A0 It is easy to fix firs=
t 2=20
comments,

but the last comments,=C2=A0 I don't have more proper way.

@Paul,=C2=A0 could you check my reply of comments #3?=C2=A0 Thanks.

>
> On Mon, Dec 16, 2019 at 7:48 PM Changqing Li <changqing.li@windriver.co=
m> wrote:
>> correct the mail list to yocto@lists.yoctoproject.org
>>
>> On 12/11/19 1:45 PM, Changqing Li wrote:
>>> On 11/13/19 6:36 PM, Paul Eggleton wrote:
>>>> Hi Changqing,
>>>>
>>>> Some comments below.
>>>>
>>>> On Tuesday, 12 November 2019 9:32:53 PM NZDT
>>>> changqing.li@windriver.com wrote:
>>>>> From: Changqing Li <changqing.li@windriver.com>
>>>>>
>>>>> Support to display local.conf and auto.conf on error report web.
>>>>> Here is commit in oe-core, which add local.conf/auto.conf into erro=
r
>>>>> report
>>>>> https://git.openembedded.org/openembedded-core/commit/?id=3D7adf970=
7c04d8ef6bcd8d8bda555687f705e6ee6
>>>>>
>>>>>
>>>>> This commit is related to YOCTO #13252
>>>>>
>>>>> Signed-off-by: Changqing Li <changqing.li@windriver.com>
>>>>> ---
>>>>>    Post/0006_auto_20190917_0419.py | 24 ++++++++++++++++++++++++
>>>>>    Post/models.py                  |  2 ++
>>>>>    Post/parser.py                  |  2 ++
>>>>>    Post/test.py                    |  2 ++
>>>>>    templates/error-details.html    | 10 ++++++++++
>>>>>    test-data/test-payload.json     |  4 +++-
>>>>>    6 files changed, 43 insertions(+), 1 deletion(-)
>>>>>    create mode 100644 Post/0006_auto_20190917_0419.py
>>>>>
>>>>> diff --git a/Post/0006_auto_20190917_0419.py
>>>>> b/Post/0006_auto_20190917_0419.py
>>>>> new file mode 100644
>>>>> index 0000000..827944e
>>>>> --- /dev/null
>>>>> +++ b/Post/0006_auto_20190917_0419.py
>>>> Could you please give the migration a proper name (-n option to
>>>> makemigrations) e.g. local_conf_auto_conf
>>> OK, thanks
>>>>> --- a/Post/models.py
>>>>> +++ b/Post/models.py
>>>>> @@ -43,6 +43,8 @@ class Build(models.Model):
>>>>>        LINK_BACK =3D models.TextField(max_length=3D300, blank=3DTru=
e,
>>>>> null=3DTrue)
>>>>>        ERROR_TYPE =3D models.CharField(max_length=3D20,
>>>>> choices=3DERROR_TYPE_CHOICES,
>>>>>                                      default=3DErrorType.RECIPE)
>>>>> +    LOCAL_CONF =3D
>>>>> models.TextField(max_length=3Dint(settings.MAX_UPLOAD_SIZE), defaul=
t=3D"")
>>>>> +    AUTO_CONF =3D
>>>>> models.TextField(max_length=3Dint(settings.MAX_UPLOAD_SIZE), defaul=
t=3D"")
>>>> I'm not sure this is practical, for two reasons:
>>>>
>>>> 1) Field sizes should not be variable like this; changing the
>>>> MAX_UPLOAD_SIZE value after the fact would not change the database
>>>> structure
>>>> 2) The value could never actually reach MAX_UPLOAD_SIZE because the
>>>> overhead of the surrounding JSON would block it from being uploaded
>>>> if it did
>>>>
>>>> However, since this is a TextField we don't actually have to specify
>>>> a max_length (for a TextField max_length only actually affects the
>>>> frontend, and we don't expose this field in a form) so it can just b=
e
>>>> removed.
>>>>
>>>> Another thing, instead of default=3D"" you should use blank=3DTrue.
>>> OK,  I will fix this.
>>>>
>>>>> +        {% if detail.BUILD.LOCAL_CONF !=3D "" %}
>>>>> +        <dt></a>Local Conf:</dt>
>>>>> +        <dd style=3D"white-space: pre-wrap;">{{
>>>>> detail.BUILD.LOCAL_CONF | safe }}</dd>
>>>>> +        {% endif %}
>>>>> +
>>>>> +        {% if detail.BUILD.AUTO_CONF !=3D "" %}
>>>>> +        <dt></a>Auto Conf:</dt>
>>>>> +        <dd style=3D"white-space: pre-wrap;">{{
>>>>> detail.BUILD.AUTO_CONF | safe }}</dd>
>>>>> +        {% endif %}
>>>> We cannot use the safe filter here - doing so could open up an XSS
>>>> vulnerability, since anyone can upload anything to the error-report
>>>> application and the content could include links or other malicious
>>>> HTML data. We should allow it to be auto-escaped. Is there a
>>>> particular issue you were using this to solve?
>>> This is for resolve a problem when there is angle brackets in
>>> local.conf/auto.conf.
>>>
>>> I have a patch in oe-core [OE-core] [PATCH] report-error.bbclass:
>>> replace angle brackets with &lt; and &gt;]
>>>
>>> when we have below content in local.conf or auto.conf:
>>> BUILDHISTORY_COMMIT_AUTHOR ?=3D "Khem Raj<raj.khem@gmail.com>"
>>> send-error-report will fail with "HTTP Error 500: OK"
>>>
>>> error-report-web do rudimentary check on all fields that are
>>> passed to the graphs page to avoid any XSS happening, if contains
>>> '<', the server will return error(Invalid characters in json).
>>> fixed by use escape of <> to replace it.
>>>
>>> NOTE: with this change, error-report-web need to add filter 'safe'
>>> for the string wanted to display to avoid further HTML escaping
>>> prior to output. Below is how the content displayed on webpage:
>>> with the filter 'safe':
>>> BUILDHISTORY_COMMIT_AUTHOR ?=3D "Khem Raj<raj.khem@gmail.com>"
>>> without the filter 'safe':
>>> BUILDHISTORY_COMMIT_AUTHOR ?=3D "Khem Raj &lt;raj.khem@gmail.com&gt;"
>>>
>>> Do you have good idea to resolve this? Thanks.
>>>
>>>> Cheers
>>>> Paul
>>>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#47707): https://lists.yoctoproject.org/g/yocto/mes=
sage/47707
>> Mute This Topic: https://lists.yoctoproject.org/mt/61340472/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [raj.khem@g=
mail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
