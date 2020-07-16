Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web10.8317.1594870538113969038
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jul 2020 20:35:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 06G3ZU8u029440
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Wed, 15 Jul 2020 20:35:30 -0700 (PDT)
Received: from [128.224.162.174] (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Wed, 15 Jul
 2020 20:35:29 -0700
Subject: Re: [yocto] [meta-selinux][PATCH 0/4] refpolicy: update to 20200229+git
From: "Yi Zhao" <yi.zhao@windriver.com>
To: Scott Murray <scott.murray@konsulko.com>
CC: <yocto@lists.yoctoproject.org>, <joe@deserted.net>
References: <20200707082914.30094-1-yi.zhao@windriver.com>
 <alpine.LFD.2.23.451.2007141131280.11165@godzilla.spiteful.org>
 <2629bc61-5450-4c6f-6241-6599077e0a86@windriver.com>
 <alpine.LFD.2.23.451.2007150526540.11165@godzilla.spiteful.org>
 <16221DF6FCA5F22B.32158@lists.yoctoproject.org>
Message-ID: <ddb11ee5-c687-7ca9-a936-b0b2ad93f661@windriver.com>
Date: Thu, 16 Jul 2020 11:35:00 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <16221DF6FCA5F22B.32158@lists.yoctoproject.org>
X-Originating-IP: [128.224.162.174]
Content-Type: multipart/alternative;
	boundary="------------7BE8E3DB2D5185D63E998C89"
Content-Language: en-US

--------------7BE8E3DB2D5185D63E998C89
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mail.windriver.com id 06G3ZU8u029440


On 7/16/20 11:27 AM, Yi Zhao wrote:
>
> On 7/15/20 6:38 PM, Scott Murray wrote:
>> On Wed, 15 Jul 2020, Yi Zhao wrote:
>>
>>> On 7/15/20 12:19 AM, Scott Murray wrote:
>>>> On Tue, 7 Jul 2020, Yi Zhao wrote:
>>>>
>>>>> Here is the changelog for this is patchset:
>>>>>
>>>>> * Drop refpolicy 2.20190201
>>>>> =C2=A0=C2=A0=C2=A0 If we still keep two versions of refpolicy, it is=
 difficult to=20
>>>>> maintain
>>>>> =C2=A0=C2=A0=C2=A0 two huge local patchsets. So drop this version an=
d only keep=20
>>>>> the git
>>>>> =C2=A0=C2=A0=C2=A0 version.
>>>>>
>>>>> * Add patches to make systemd/sysvinit can work with all policy=20
>>>>> types.
>>>>>
>>>>> Here are the results with this patcheset:
>>>>>
>>>>> Machine: qemux86-64
>>>>> Image: core-image-selinux
>>>>> Init manager: sysvinit and systemd
>>>>> Policy types: minimum, targeted, standard, mcs, mls
>>>>> Boot command: runqemu qemux86-64 kvm nographic bootparams=3D"selinux=
=
=3D1
>>>>> enforcing=3D1" qemuparams=3D"-m 1024"
>>>>>
>>>>> 1. All refpolicy type can be built without problems.
>>>>>
>>>>> 2. With parameter selinux=3D1 & enforcing=3D1
>>>>> The qemu can boot up and login with all policy types.
>>>> [snip]
>>>>
>>>> I suspect I'm really missing something, but I'm unable to successfull=
y
>>>> make this work with poky + meta-selinux and its meta-openembedded
>>>> dependencies with either sysvinit or systemd; I see denials on boot=
=20
>>>> and
>>>> cannot log in due to denials on reading /etc/passwd.=C2=A0 That's als=
o the
>>>> behavior I see without this update, so I'm wondering if I'm just doin=
g
>>>> something significantly wrong with respect to configuration.=C2=A0 My
>>>> local.conf additions for testing are just:
>>>>
>>>> DISTRO_FEATURES_append =3D " selinux"
>>>
>>> Please set the following DISTRO_FEATURES:
>>>
>>> DISTRO_FEATURES_append =3D " acl xattr pam selinux"
>> Ah, poky is missing "pam", I somehow missed that when I checked
>> previously.=C2=A0 I can get logged in when I add it and rebuild.=C2=A0 =
It likely
>> would make sense to use the check_features class in e.g.
>> core-image-selinux to catch this.=C2=A0 Would you be okay with a patch =
that
>> does so?
>
> Thanks. It makes sense. I can send a patch later or you can also do it.
>
>
>>
>>> If you see some AVC denials for {map} like below:
>>>
>>> avc:=C2=A0 denied=C2=A0 { map } for=C2=A0 pid=3D249 comm=3D"dbus-daemo=
n"=20
>>> path=3D"/etc/passwd"
>>> dev=3D"vda" ino=3D345=20
>>> scontext=3Dsystem_u:system_r:system_dbusd_t:s0-s0:c0.c1023
>>> tcontext=3Dsystem_u:object_r:etc_t:s0 tclass=3Dfile permissive=3D0
>>> avc:=C2=A0 denied=C2=A0 { map } for=C2=A0 pid=3D319 comm=3D"avahi-daem=
on"=20
>>> path=3D"/etc/passwd"
>>> dev=3D"vda" ino=3D345 scontext=3Dsystem_u:system_r:avahi_t:s0
>>> tcontext=3Dsystem_u:object_r:etc_t:s0 tclass=3Dfile permissive=3D0
>>> avc:=C2=A0 denied=C2=A0 { map } for=C2=A0 pid=3D379 comm=3D"login" pat=
h=3D"/etc/passwd"=20
>>> dev=3D"vda"
>>> ino=3D345 scontext=3Dsystem_u:system_r:local_login_t:s0-s0:c0.c1023
>>> tcontext=3Dsystem_u:object_r:etc_t:s0 tclass=3Dfile permissive=3D0
>>>
>>> They are harmless.
>> Having spurious denials seems like it would make using them for=20
>> detecting
>> actual bad behavior harder, I'll likely start looking at the policy to
>> see if some of this can be fixed.


You can install auditd into the rootfs and startup the daemon to let the=
=20
denials messages write to audit.log rather than print to the console.


//Yi

>>
>
> For this issue, there is a discussion in=20
> http://oss.tresys.com/pipermail/refpolicy/2017-September/009865.html
>
> Actually I saw lots of map denials on /etc/passwd or /etc/group for=20
> various commands. I'm not sure if we should allow them all via=20
> files_map_etc_files(domain) or dontaudit them ...
>
>
> //Yi
>
>>
>> Thanks,
>>
>> Scott
>
>=20

--------------7BE8E3DB2D5185D63E998C89
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mail.windriver.com id 06G3ZU8u029440

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 7/16/20 11:27 AM, Yi Zhao wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:16221DF6FCA5F22B.32158@lists.yoctoproject.org">
      <br>
      On 7/15/20 6:38 PM, Scott Murray wrote:
      <br>
      <blockquote type=3D"cite">On Wed, 15 Jul 2020, Yi Zhao wrote:
        <br>
        <br>
        <blockquote type=3D"cite">On 7/15/20 12:19 AM, Scott Murray wrote:
          <br>
          <blockquote type=3D"cite">On Tue, 7 Jul 2020, Yi Zhao wrote:
            <br>
            <br>
            <blockquote type=3D"cite">Here is the changelog for this is
              patchset:
              <br>
              <br>
              * Drop refpolicy 2.20190201
              <br>
              =C2=A0=C2=A0=C2=A0 If we still keep two versions of refpolic=
y, it is
              difficult to maintain
              <br>
              =C2=A0=C2=A0=C2=A0 two huge local patchsets. So drop this ve=
rsion and
              only keep the git
              <br>
              =C2=A0=C2=A0=C2=A0 version.
              <br>
              <br>
              * Add patches to make systemd/sysvinit can work with all
              policy types.
              <br>
              <br>
              Here are the results with this patcheset:
              <br>
              <br>
              Machine: qemux86-64
              <br>
              Image: core-image-selinux
              <br>
              Init manager: sysvinit and systemd
              <br>
              Policy types: minimum, targeted, standard, mcs, mls
              <br>
              Boot command: runqemu qemux86-64 kvm nographic
              bootparams=3D"selinux=3D1
              <br>
              enforcing=3D1" qemuparams=3D"-m 1024"
              <br>
              <br>
              1. All refpolicy type can be built without problems.
              <br>
              <br>
              2. With parameter selinux=3D1 &amp; enforcing=3D1
              <br>
              The qemu can boot up and login with all policy types.
              <br>
            </blockquote>
            [snip]
            <br>
            <br>
            I suspect I'm really missing something, but I'm unable to
            successfully
            <br>
            make this work with poky + meta-selinux and its
            meta-openembedded
            <br>
            dependencies with either sysvinit or systemd; I see denials
            on boot and
            <br>
            cannot log in due to denials on reading /etc/passwd.=C2=A0 Tha=
t's
            also the
            <br>
            behavior I see without this update, so I'm wondering if I'm
            just doing
            <br>
            something significantly wrong with respect to
            configuration.=C2=A0 My
            <br>
            local.conf additions for testing are just:
            <br>
            <br>
            DISTRO_FEATURES_append =3D " selinux"
            <br>
          </blockquote>
          <br>
          Please set the following DISTRO_FEATURES:
          <br>
          <br>
          DISTRO_FEATURES_append =3D " acl xattr pam selinux"
          <br>
        </blockquote>
        Ah, poky is missing "pam", I somehow missed that when I checked
        <br>
        previously.=C2=A0 I can get logged in when I add it and rebuild.=
=C2=A0 It
        likely
        <br>
        would make sense to use the check_features class in e.g.
        <br>
        core-image-selinux to catch this.=C2=A0 Would you be okay with a
        patch that
        <br>
        does so?
        <br>
      </blockquote>
      <br>
      Thanks. It makes sense. I can send a patch later or you can also
      do it.
      <br>
      <br>
      <br>
      <blockquote type=3D"cite">
        <br>
        <blockquote type=3D"cite">If you see some AVC denials for {map}
          like below:
          <br>
          <br>
          avc:=C2=A0 denied=C2=A0 { map } for=C2=A0 pid=3D249 comm=3D"dbus=
-daemon"
          path=3D"/etc/passwd"
          <br>
          dev=3D"vda" ino=3D345
          scontext=3Dsystem_u:system_r:system_dbusd_t:s0-s0:c0.c1023
          <br>
          tcontext=3Dsystem_u:object_r:etc_t:s0 tclass=3Dfile permissive=
=3D0
          <br>
          avc:=C2=A0 denied=C2=A0 { map } for=C2=A0 pid=3D319 comm=3D"avah=
i-daemon"
          path=3D"/etc/passwd"
          <br>
          dev=3D"vda" ino=3D345 scontext=3Dsystem_u:system_r:avahi_t:s0
          <br>
          tcontext=3Dsystem_u:object_r:etc_t:s0 tclass=3Dfile permissive=
=3D0
          <br>
          avc:=C2=A0 denied=C2=A0 { map } for=C2=A0 pid=3D379 comm=3D"logi=
n"
          path=3D"/etc/passwd" dev=3D"vda"
          <br>
          ino=3D345
          scontext=3Dsystem_u:system_r:local_login_t:s0-s0:c0.c1023
          <br>
          tcontext=3Dsystem_u:object_r:etc_t:s0 tclass=3Dfile permissive=
=3D0
          <br>
          <br>
          They are harmless.
          <br>
        </blockquote>
        Having spurious denials seems like it would make using them for
        detecting
        <br>
        actual bad behavior harder, I'll likely start looking at the
        policy to
        <br>
        see if some of this can be fixed.</blockquote>
    </blockquote>
    <p><br>
    </p>
    <p>You can install auditd into the rootfs and startup the daemon to
      let the denials messages write to audit.log rather than print to
      the console.</p>
    <p><br>
    </p>
    <p>//Yi<br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:16221DF6FCA5F22B.32158@lists.yoctoproject.org">
      <blockquote type=3D"cite">
        <br>
      </blockquote>
      <br>
      For this issue, there is a discussion in
      <a class=3D"moz-txt-link-freetext" href=3D"http://oss.tresys.com/pip=
ermail/refpolicy/2017-September/009865.html">http://oss.tresys.com/pipermai=
l/refpolicy/2017-September/009865.html</a>
      <br>
      <br>
      Actually I saw lots of map denials on /etc/passwd or /etc/group
      for various commands. I'm not sure if we should allow them all via
      files_map_etc_files(domain) or dontaudit them ...
      <br>
      <br>
      <br>
      //Yi
      <br>
      <br>
      <blockquote type=3D"cite">
        <br>
        Thanks,
        <br>
        <br>
        Scott
        <br>
      </blockquote>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
  </body>
</html>

--------------7BE8E3DB2D5185D63E998C89--
