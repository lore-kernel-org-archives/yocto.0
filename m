Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web09.1137.1581648153794299154
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2020 18:42:34 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: changqing.li@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 01E2gSWN029077
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 13 Feb 2020 18:42:28 -0800 (PST)
Received: from [128.224.162.189] (128.224.162.189) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Thu, 13 Feb
 2020 18:42:27 -0800
Subject: Re: [yocto] [error-report-web][PATCH V2] Add local.conf and auto.conf into error details
To: Paul Eggleton <paul.eggleton@linux.intel.com>
CC: <yocto@lists.yoctoproject.org>
References: <1573547573-352969-1-git-send-email-changqing.li@windriver.com>
 <9315981.NtHHCumI8A@shodan>
 <5af91cd5-9249-e236-480b-fb3b4962bc0b@windriver.com>
From: "Changqing Li" <changqing.li@windriver.com>
Message-ID: <2ac16c10-de9d-1777-20da-4766af5e53f3@windriver.com>
Date: Fri, 14 Feb 2020 10:42:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <5af91cd5-9249-e236-480b-fb3b4962bc0b@windriver.com>
X-Originating-IP: [128.224.162.189]
X-MIME-Autoconverted: from 8bit to quoted-printable by mail1.windriver.com id 01E2gSWN029077
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi, Paul

Could you help to check my reply below, thanks.

On 12/11/19 1:45 PM, Changqing Li wrote:
>
> On 11/13/19 6:36 PM, Paul Eggleton wrote:
>> Hi Changqing,
>>
>> Some comments below.
>>
>> On Tuesday, 12 November 2019 9:32:53 PM NZDT=20
>> changqing.li@windriver.com wrote:
>>> From: Changqing Li <changqing.li@windriver.com>
>>>
>>> Support to display local.conf and auto.conf on error report web.
>>> Here is commit in oe-core, which add local.conf/auto.conf into error=20
>>> report
>>> https://git.openembedded.org/openembedded-core/commit/?id=3D7adf9707c=
04d8ef6bcd8d8bda555687f705e6ee6=20
>>>
>>>
>>> This commit is related to YOCTO #13252
>>>
>>> Signed-off-by: Changqing Li <changqing.li@windriver.com>
>>> ---
>>> =C2=A0 Post/0006_auto_20190917_0419.py | 24 ++++++++++++++++++++++++
>>> =C2=A0 Post/models.py=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 ++
>>> =C2=A0 Post/parser.py=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 ++
>>> =C2=A0 Post/test.py=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2=
 ++
>>> =C2=A0 templates/error-details.html=C2=A0=C2=A0=C2=A0 | 10 ++++++++++
>>> =C2=A0 test-data/test-payload.json=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 4 =
+++-
>>> =C2=A0 6 files changed, 43 insertions(+), 1 deletion(-)
>>> =C2=A0 create mode 100644 Post/0006_auto_20190917_0419.py
>>>
>>> diff --git a/Post/0006_auto_20190917_0419.py=20
>>> b/Post/0006_auto_20190917_0419.py
>>> new file mode 100644
>>> index 0000000..827944e
>>> --- /dev/null
>>> +++ b/Post/0006_auto_20190917_0419.py
>> Could you please give the migration a proper name (-n option to=20
>> makemigrations) e.g. local_conf_auto_conf
> OK, thanks
>>
>>> --- a/Post/models.py
>>> +++ b/Post/models.py
>>> @@ -43,6 +43,8 @@ class Build(models.Model):
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 LINK_BACK =3D models.TextField(max_len=
gth=3D300, blank=3DTrue,=20
>>> null=3DTrue)
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ERROR_TYPE =3D models.CharField(max_le=
ngth=3D20,=20
>>> choices=3DERROR_TYPE_CHOICES,
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 defaul=
t=3DErrorType.RECIPE)
>>> +=C2=A0=C2=A0=C2=A0 LOCAL_CONF =3D=20
>>> models.TextField(max_length=3Dint(settings.MAX_UPLOAD_SIZE), default=3D=
"")
>>> +=C2=A0=C2=A0=C2=A0 AUTO_CONF =3D=20
>>> models.TextField(max_length=3Dint(settings.MAX_UPLOAD_SIZE), default=3D=
"")
>> I'm not sure this is practical, for two reasons:
>>
>> 1) Field sizes should not be variable like this; changing the=20
>> MAX_UPLOAD_SIZE value after the fact would not change the database=20
>> structure
>> 2) The value could never actually reach MAX_UPLOAD_SIZE because the=20
>> overhead of the surrounding JSON would block it from being uploaded=20
>> if it did
>>
>> However, since this is a TextField we don't actually have to specify=20
>> a max_length (for a TextField max_length only actually affects the=20
>> frontend, and we don't expose this field in a form) so it can just be=20
>> removed.
>>
>> Another thing, instead of default=3D"" you should use blank=3DTrue.
> OK,=C2=A0 I will fix this.
>>
>>
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 {% if detail.BUILD.LOCAL_=
CONF !=3D "" %}
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <dt></a>Local Conf:</dt>
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <dd style=3D"white-space:=
 pre-wrap;">{{=20
>>> detail.BUILD.LOCAL_CONF | safe }}</dd>
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 {% endif %}
>>> +
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 {% if detail.BUILD.AUTO_C=
ONF !=3D "" %}
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <dt></a>Auto Conf:</dt>
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <dd style=3D"white-space:=
 pre-wrap;">{{=20
>>> detail.BUILD.AUTO_CONF | safe }}</dd>
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 {% endif %}
>> We cannot use the safe filter here - doing so could open up an XSS=20
>> vulnerability, since anyone can upload anything to the error-report=20
>> application and the content could include links or other malicious=20
>> HTML data. We should allow it to be auto-escaped. Is there a=20
>> particular issue you were using this to solve?
>
> This is for resolve a problem when there is angle brackets in=20
> local.conf/auto.conf.
>
> I have a patch in oe-core [OE-core] [PATCH] report-error.bbclass:=20
> replace angle brackets with &lt; and &gt;]
>
> when we have below content in local.conf or auto.conf:
> BUILDHISTORY_COMMIT_AUTHOR ?=3D "Khem Raj<raj.khem@gmail.com>"
> send-error-report will fail with "HTTP Error 500: OK"
>
> error-report-web do rudimentary check on all fields that are
> passed to the graphs page to avoid any XSS happening, if contains
> '<', the server will return error(Invalid characters in json).
> fixed by use escape of <> to replace it.
>
> NOTE: with this change, error-report-web need to add filter 'safe'
> for the string wanted to display to avoid further HTML escaping
> prior to output. Below is how the content displayed on webpage:
> with the filter 'safe':
> BUILDHISTORY_COMMIT_AUTHOR ?=3D "Khem Raj<raj.khem@gmail.com>"
> without the filter 'safe':
> BUILDHISTORY_COMMIT_AUTHOR ?=3D "Khem Raj &lt;raj.khem@gmail.com&gt;"
>
> Do you have good idea to resolve this? Thanks.
>
>>
>> Cheers
>> Paul
>>
>
