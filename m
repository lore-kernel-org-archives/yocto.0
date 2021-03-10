Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.7226.1615374889405207611
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Mar 2021 03:14:49 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linux.microsoft.com header.s=default header.b=Oy6Jg7ci;
 spf=fail (domain: linux.microsoft.com, ip: 198.145.29.25, mailfrom: anbelski@linux.microsoft.com)
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
	by mail.yoctoproject.org (Postfix) with ESMTP id 1A35738C083D
	for <yocto@yoctoproject.org>; Wed, 10 Mar 2021 11:14:49 +0000 (UTC)
Received: from [192.168.178.23] (unknown [83.135.209.152])
	by linux.microsoft.com (Postfix) with ESMTPSA id C69EE208CFA4;
	Wed, 10 Mar 2021 03:14:47 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com C69EE208CFA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1615374888;
	bh=qZYNzM0YHuZ55MrDhq6tN3l3ZJo+cnekxSsqNScPywk=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=Oy6Jg7ci6ETmiqbuzyLp+lHWa6EYP8hmKBbrKV/7VpclJ1z9x67YN2Rmg1GZoIJz6
	 dpyMeIXayPS5wKEeF+6ZYWQGjTeWOuycd/EYzF2bUCmuB6WTPX2PzrrqzoxmDedShl
	 fhpRCxInXUaXBnpoBbIgWHUOlRcKzDqkTN/Kh5Og=
Subject: Re: [yocto] [meta-selinux][dunfell][gatesgarth][master][PATCH] libselinux-python: Fix build error due to missing target config
To: Yi Zhao <yi.zhao@windriver.com>, Joe MacDonald <joe@deserted.net>
Cc: yocto@yoctoproject.org
References: <20210309115511.7522-1-anbelski@linux.microsoft.com>
 <20210309130043.GA9162@deserted.net>
 <02b457c2-5719-ab43-8f23-e414aadff4d1@linux.microsoft.com>
 <20210309153208.GB9162@deserted.net>
 <98f77c6a-8d89-fef4-0e5a-67ad67c28875@windriver.com>
From: "Anatol Belski" <anbelski@linux.microsoft.com>
Message-ID: <04d6f1cc-79d9-c166-57c0-ab9bcb76a2b7@linux.microsoft.com>
Date: Wed, 10 Mar 2021 12:14:45 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <98f77c6a-8d89-fef4-0e5a-67ad67c28875@windriver.com>
Content-Type: multipart/alternative;
 boundary="------------5B88A658E8CC9B6C8A354CD2"
Content-Language: en-US

--------------5B88A658E8CC9B6C8A354CD2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,

On 3/10/2021 6:30 AM, Yi Zhao wrote:
>
> On 3/9/21 11:32 PM, Joe MacDonald wrote:
>> [Re: [yocto] [meta-selinux][dunfell][gatesgarth][master][PATCH]=20
>> libselinux-python: Fix build error due to missing target config] On=20
>> 21.03.09 (Tue 14:53) Anatol Belski wrote:
>>
>>> Hi Joe,
>>>
>>> thanks for the quick check. The patch applies fine to dunfell and
>>> gatesgarth, master has the changed recipe version in the bb name. I wa=
s
>>> about to rebase to master but pulling shows already did it. I was=20
>>> too slow
>>> :) thanks for the quick fix.
>> No problem!=C2=A0 I assumed you were working on a just-slightly-out-of-=
date
>> master branch and my work tree already had your patch half applied when
>> the 'git am' failed, so I just finished that part up.
>
>
> Hi Joe,
>
>
> This patch doesn't need to be merged into master because I have fixed=20
> it in commit fb15056ff44318d7886fd0f68e2f6dba716e9be4.

either way, a backport to dunfell and gatesgarth would be great to have=20
then.

Thanks!

Anatol


> //Yi
>
>>
>> I'll get to the other branches in a bit.
>>
>> -Joe.
>>
>>> Regards
>>>
>>> Anatol
>>>
>>> On 3/9/2021 2:00 PM, Joe MacDonald wrote:
>>>> Hi Anatol,
>>>>
>>>> I will confirm this against the other branches (dunfell and=20
>>>> gatesgarth)
>>>> but your patch doesn't appear to be against the current master=20
>>>> branch (and
>>>> it's unlikely one patch will apply to all branches).=C2=A0 Can you se=
nd out
>>>> specific patches against the head of tree for each branch you care=20
>>>> about,
>>>> please?=C2=A0 Then I can get them merged for you.
>>>>
>>>> Thanks,
>>>> -Joe.
>>>>
>>>> [[yocto] [meta-selinux][dunfell][gatesgarth][master][PATCH]=20
>>>> libselinux-python: Fix build error due to missing target config] On=
=20
>>>> 21.03.09 (Tue 11:55) Anatol Belski wrote:
>>>>
>>>>> This fixes the error below:
>>>>>
>>>>> gcc: error: unrecognized command line option
>>>>> =E2=80=98-fmacro-prefix-map=3D/path/to/build/libselinux-python/3.0-r=
0=3D/usr/src/debug/libselinux-python/3.0-r0=E2=80=99=20
>>>>>
>>>>>
>>>>> Without inheriting the config, supposedly a wrong compiler is used.
>>>>>
>>>>> Signed-off-by: Anatol Belski <anbelski@linux.microsoft.com>
>>>>> ---
>>>>> =C2=A0=C2=A0 recipes-security/selinux/libselinux-python_3.0.bb | 2 +=
+
>>>>> =C2=A0=C2=A0 1 file changed, 2 insertions(+)
>>>>>
>>>>> diff --git a/recipes-security/selinux/libselinux-python_3.0.bb=20
>>>>> b/recipes-security/selinux/libselinux-python_3.0.bb
>>>>> index 2b5438d..3c03df1 100644
>>>>> --- a/recipes-security/selinux/libselinux-python_3.0.bb
>>>>> +++ b/recipes-security/selinux/libselinux-python_3.0.bb
>>>>> @@ -4,6 +4,8 @@ SRC_URI =3D=20
>>>>> "https://github.com/SELinuxProject/selinux/releases/download/${SELIN=
UX=20
>>>>>
>>>>> =C2=A0=C2=A0 require ${BPN}.inc
>>>>> +inherit python3targetconfig
>>>>> +
>>>>> =C2=A0=C2=A0 LIC_FILES_CHKSUM =3D=20
>>>>> "file://LICENSE;md5=3D84b4d2c6ef954a2d4081e775a270d0d0"
>>>>> =C2=A0=C2=A0 SRC_URI[md5sum] =3D "b387a66f087b6d97713570e85ec89d89"
>>>>> --=20
>>>>> 2.17.1
>>>>>
>>>>>
>>>>>
>
>=20
>

--------------5B88A658E8CC9B6C8A354CD2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>Hi,<br>
    </p>
    <div class=3D"moz-cite-prefix">On 3/10/2021 6:30 AM, Yi Zhao wrote:<br=
>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:98f77c6a-8d89-fef4-0e5a-67ad67c28875@windriver.com">
      <br>
      On 3/9/21 11:32 PM, Joe MacDonald wrote:
      <br>
      <blockquote type=3D"cite">[Re: [yocto]
        [meta-selinux][dunfell][gatesgarth][master][PATCH]
        libselinux-python: Fix build error due to missing target config]
        On 21.03.09 (Tue 14:53) Anatol Belski wrote:
        <br>
        <br>
        <blockquote type=3D"cite">Hi Joe,
          <br>
          <br>
          thanks for the quick check. The patch applies fine to dunfell
          and
          <br>
          gatesgarth, master has the changed recipe version in the bb
          name. I was
          <br>
          about to rebase to master but pulling shows already did it. I
          was too slow
          <br>
          :) thanks for the quick fix.
          <br>
        </blockquote>
        No problem!=C2=A0 I assumed you were working on a
        just-slightly-out-of-date
        <br>
        master branch and my work tree already had your patch half
        applied when
        <br>
        the 'git am' failed, so I just finished that part up.
        <br>
      </blockquote>
      <br>
      <br>
      Hi Joe,
      <br>
      <br>
      <br>
      This patch doesn't need to be merged into master because I have
      fixed it in commit fb15056ff44318d7886fd0f68e2f6dba716e9be4.
      <br>
    </blockquote>
    <p>either way, a backport to dunfell and gatesgarth would be great
      to have then.</p>
    <p>Thanks!</p>
    <p>Anatol<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:98f77c6a-8d89-fef4-0e5a-67ad67c28875@windriver.com">//Yi
      <br>
      <br>
      <blockquote type=3D"cite">
        <br>
        I'll get to the other branches in a bit.
        <br>
        <br>
        -Joe.
        <br>
        <br>
        <blockquote type=3D"cite">Regards
          <br>
          <br>
          Anatol
          <br>
          <br>
          On 3/9/2021 2:00 PM, Joe MacDonald wrote:
          <br>
          <blockquote type=3D"cite">Hi Anatol,
            <br>
            <br>
            I will confirm this against the other branches (dunfell and
            gatesgarth)
            <br>
            but your patch doesn't appear to be against the current
            master branch (and
            <br>
            it's unlikely one patch will apply to all branches).=C2=A0 Can
            you send out
            <br>
            specific patches against the head of tree for each branch
            you care about,
            <br>
            please?=C2=A0 Then I can get them merged for you.
            <br>
            <br>
            Thanks,
            <br>
            -Joe.
            <br>
            <br>
            [[yocto] [meta-selinux][dunfell][gatesgarth][master][PATCH]
            libselinux-python: Fix build error due to missing target
            config] On 21.03.09 (Tue 11:55) Anatol Belski wrote:
            <br>
            <br>
            <blockquote type=3D"cite">This fixes the error below:
              <br>
              <br>
              gcc: error: unrecognized command line option
              <br>
=E2=80=98-fmacro-prefix-map=3D/path/to/build/libselinux-python/3.0-r0=3D/u=
sr/src/debug/libselinux-python/3.0-r0=E2=80=99
              <br>
              <br>
              Without inheriting the config, supposedly a wrong compiler
              is used.
              <br>
              <br>
              Signed-off-by: Anatol Belski
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:anbelski@l=
inux.microsoft.com">&lt;anbelski@linux.microsoft.com&gt;</a>
              <br>
              ---
              <br>
              =C2=A0=C2=A0 recipes-security/selinux/libselinux-python_3.0.=
bb | 2
              ++
              <br>
              =C2=A0=C2=A0 1 file changed, 2 insertions(+)
              <br>
              <br>
              diff --git
              a/recipes-security/selinux/libselinux-python_3.0.bb
              b/recipes-security/selinux/libselinux-python_3.0.bb
              <br>
              index 2b5438d..3c03df1 100644
              <br>
              --- a/recipes-security/selinux/libselinux-python_3.0.bb
              <br>
              +++ b/recipes-security/selinux/libselinux-python_3.0.bb
              <br>
              @@ -4,6 +4,8 @@ SRC_URI =3D
              "<a class=3D"moz-txt-link-freetext" href=3D"https://github.c=
om/SELinuxProject/selinux/releases/download/$">https://github.com/SELinuxPr=
oject/selinux/releases/download/$</a>{SELINUX
              <br>
              =C2=A0=C2=A0 require ${BPN}.inc
              <br>
              +inherit python3targetconfig
              <br>
              +
              <br>
              =C2=A0=C2=A0 LIC_FILES_CHKSUM =3D
              <a class=3D"moz-txt-link-rfc2396E" href=3D"file://LICENSE;md=
5=3D84b4d2c6ef954a2d4081e775a270d0d0">"file://LICENSE;md5=3D84b4d2c6ef954a2=
d4081e775a270d0d0"</a>
              <br>
              =C2=A0=C2=A0 SRC_URI[md5sum] =3D "b387a66f087b6d97713570e85e=
c89d89"
              <br>
              --=C2=A0<br>
              2.17.1
              <br>
              <br>
              <br>
              <br>
            </blockquote>
          </blockquote>
        </blockquote>
      </blockquote>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
  </body>
</html>

--------------5B88A658E8CC9B6C8A354CD2--
