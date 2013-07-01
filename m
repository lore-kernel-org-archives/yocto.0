Return-Path: <mhalstead@linuxfoundation.org>
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 442F9E0140D
	for <yocto@yoctoproject.org>; Sun, 30 Jun 2013 23:18:24 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id ld11so4586731pab.8
	for <yocto@yoctoproject.org>; Sun, 30 Jun 2013 23:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:x-enigmail-version:content-type;
	bh=o9Z4UO6PZWn9bP2ZrKrbdPCpLgGz4w1SxPI2V3Cjc2U=;
	b=JkDLxG89i0xlfdX661X6wxLbts3MtvhSF5AHNWXIIKFNwoJve16u+Wv/c96IWNvapx
	gqR95tSANc/Lhzevj4eHRxU8n9G/QqofweUuol036ynVCXIa4xc5b2eDfmrYynXPnM8d
	vJOBmgJV29P44udBvZJ8QU08JxUlBxJ6aDj0c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:x-enigmail-version:content-type
	:x-gm-message-state;
	bh=o9Z4UO6PZWn9bP2ZrKrbdPCpLgGz4w1SxPI2V3Cjc2U=;
	b=UDG/3VOmXcmR9n9QjShbEtD3PYAVL0wnWaAXE+cI17ZQI81lMlEU2vKktEfENN0dtE
	n2ktpj7z2FoYMy3Cd9sWnGRFy6cpBZtFLcoj9X+Z6PoWm708IV+qUl2kQ9jXZIsNtV65
	mvHogrg+DwxtwlGin56yy+0l5bRJgRuqIyKIvaorX30FRzov4f3A4JIgdrBvB6R3maLB
	k8gMI3pD84P+7nHlcCe51IVbhONwBGuP+12aqYNQn10g/QQuuzlc/9rh+HcY5Taq6+fq
	MsYT9gt7AZXwa70s6KC9v3VJLEVtZ33kSP6/euxC+J7qrWxlpcM/Y4d19v+ZKAu5yYPn
	UshA==
X-Received: by 10.68.197.226 with SMTP id ix2mr18376554pbc.149.1372659504461; 
	Sun, 30 Jun 2013 23:18:24 -0700 (PDT)
Received: from pride.localdomain ([192.102.209.1])
	by mx.google.com with ESMTPSA id
	tq8sm20592214pbc.30.2013.06.30.23.18.22 for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Sun, 30 Jun 2013 23:18:23 -0700 (PDT)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <51D11F2E.6070104@yoctoproject.org>
Date: Sun, 30 Jun 2013 23:18:22 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130625 Thunderbird/17.0.7
MIME-Version: 1.0
To: Darren Hart <darren.hart@intel.com>, 
	Bruce Ashfield <bruce.ashfield@windriver.com>
References: <1372409484.9930.245.camel@ted> <51CD86F1.7090409@windriver.com>
	<1372424223.9930.257.camel@ted> <51CD8973.7020704@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF5244E@ORSMSX101.amr.corp.intel.com>
	<51CD9264.2040609@windriver.com> <1372427783.9930.258.camel@ted>
	<1372482483.9243.42.camel@envy.home>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF52828@ORSMSX101.amr.corp.intel.com>
	<51D11493.6030602@yoctoproject.org>
	<1372657489.4401.7.camel@envy.home>
In-Reply-To: <1372657489.4401.7.camel@envy.home>
X-Enigmail-Version: 1.5.1
X-Gm-Message-State: ALoCoQlbdkbe7z3Dvw/qJW5qqRj/vQQ+hJLUeKcFBJ1SDzAdCItSmRIIDOczWwr4WhFGjjNkEEYU
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: poky-extras
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
X-List-Received-Date: Mon, 01 Jul 2013 06:18:27 -0000
X-Groupsio-MsgNum: 14769
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms060501040904000406070907"

--------------ms060501040904000406070907
Content-Type: multipart/alternative;
 boundary="------------070304080407050409020204"

--------------070304080407050409020204
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


On 06/30/2013 10:44 PM, Darren Hart wrote:
> On Sun, 2013-06-30 at 22:33 -0700, Michael Halstead wrote:
>> I can change the name shortly. Is there any reason to keep a read-only=

>> copy available at the current location temporarily?
> Not really. Unless Bruce is using it in some automated scripts that nee=
d
> to be updated.
>
> --
> Darren
The name has been changed. Shall we update the description or is
"Supplementary metadata layers to extend the Poky core
<https://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto-kernel-extras/>"
still appropriate?

Thanks,

Michael Halstead
Yocto Project / Sys Admin


>> Michael Halstead
>> Yocto Project / Sys Admin
>>
>> On 06/30/2013 10:19 PM, Rifenbark, Scott M wrote:
>>> Hi,=20
>>>
>>> I updated the dev-manual section that tells the user what is in this =
repo and shows an example of cloning it.  Nothing changes except for the =
name, which I switched to 'meta-yocto-kernel-extras'.  To me, it appears =
that the contents of the repo still contain the kernel BitBake append fil=
es that you edit to point to your locally modified kernel source files as=
 described in the text.  Within the entire YP documentation set, this lit=
tle area is the only reference to the old 'poky-extras' repo.  Here is th=
e link to see the changes - http://www.yoctoproject.org/docs/1.5/dev-manu=
al/dev-manual.html#meta-yocto-kernel-extras-repo.=20
>>>
>>> I am assuming that the name of the repo will indeed be changed to 'me=
ta-yocto-kernel-extras'.  If I don't hear from anyone, I will assume ever=
ything is good.
>>>
>>> Thanks,
>>> Scott
>>>
>>>> -----Original Message-----
>>>> From: Hart, Darren
>>>> Sent: Friday, June 28, 2013 10:08 PM
>>>> To: Richard Purdie
>>>> Cc: Bruce Ashfield; Rifenbark, Scott M; yocto; Michael Halstead
>>>> Subject: Re: poky-extras
>>>>
>>>> On Fri, 2013-06-28 at 14:56 +0100, Richard Purdie wrote:
>>>>> On Fri, 2013-06-28 at 09:40 -0400, Bruce Ashfield wrote:
>>>>>> On 13-06-28 09:22 AM, Rifenbark, Scott M wrote:
>>>>>>> All I need is the name to make some initial changes.
>>>>>> Personally, I'm fine with 'meta-yocto-kernel'. Naming things is
>>>>>> never easy, so I won't agonize over whether or not an "extras"
>>>>>> should be on the end. But the name should be clear that it isn't
>>>>>> the main yocto kernel, it's just a few crappy bbappends that make
>>>>>> working with it locally easier for some :)
>>>>>>
>>>>>> So my only counter proposal is: meta-yocto-kernel-extras
>>>>>>
>>>>>> I'm going to de-crapify the bbappends so they are more useful, and=

>>>>>> have started on that work, but haven't finished it yet.
>>>>> No strong feelings here. I just wiped out meta-linaro from there
>>>> (hoping
>>>>> Darren won't mind) and that checksums.ini file.
>>>> That's fine, I was just thinking about that last week when I saw Lin=
aro
>>>> has a meta-linaro. That's where it belongs, so buh-bye. :-)
>>>>
>>>> --
>>>> Darren Hart
>>>> Intel Open Source Technology Center
>>>> Yocto Project - Technical Lead - Linux Kernel
>>


--------------070304080407050409020204
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3DUTF-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix"><br>
      On 06/30/2013 10:44 PM, Darren Hart wrote:<br>
    </div>
    <blockquote cite=3D"mid:1372657489.4401.7.camel@envy.home" type=3D"ci=
te">
      <pre wrap=3D"">On Sun, 2013-06-30 at 22:33 -0700, Michael Halstead =
wrote:
</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"">I can change the name shortly. Is there any reason=
 to keep a read-only
copy available at the current location temporarily?
</pre>
      </blockquote>
      <pre wrap=3D"">
Not really. Unless Bruce is using it in some automated scripts that need
to be updated.

--
Darren
</pre>
    </blockquote>
    The name has been changed. Shall we update the description or is "<a
href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto-kernel-extr=
as/">Supplementary
      metadata layers to extend the Poky core</a>" still appropriate?<br>=

    <br>
    Thanks,<br>
    <pre class=3D"moz-signature" cols=3D"72">Michael Halstead
Yocto Project / Sys Admin</pre>
    <br>
    <blockquote cite=3D"mid:1372657489.4401.7.camel@envy.home" type=3D"ci=
te">
      <pre wrap=3D"">
</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"">
Michael Halstead
Yocto Project / Sys Admin

On 06/30/2013 10:19 PM, Rifenbark, Scott M wrote:
</pre>
        <blockquote type=3D"cite">
          <pre wrap=3D"">Hi,=20

I updated the dev-manual section that tells the user what is in this repo=
 and shows an example of cloning it.  Nothing changes except for the name=
, which I switched to 'meta-yocto-kernel-extras'.  To me, it appears that=
 the contents of the repo still contain the kernel BitBake append files t=
hat you edit to point to your locally modified kernel source files as des=
cribed in the text.  Within the entire YP documentation set, this little =
area is the only reference to the old 'poky-extras' repo.  Here is the li=
nk to see the changes - <a class=3D"moz-txt-link-freetext" href=3D"http:/=
/www.yoctoproject.org/docs/1.5/dev-manual/dev-manual.html#meta-yocto-kern=
el-extras-repo">http://www.yoctoproject.org/docs/1.5/dev-manual/dev-manua=
l.html#meta-yocto-kernel-extras-repo</a>.=20

I am assuming that the name of the repo will indeed be changed to 'meta-y=
octo-kernel-extras'.  If I don't hear from anyone, I will assume everythi=
ng is good.

Thanks,
Scott

</pre>
          <blockquote type=3D"cite">
            <pre wrap=3D"">-----Original Message-----
From: Hart, Darren
Sent: Friday, June 28, 2013 10:08 PM
To: Richard Purdie
Cc: Bruce Ashfield; Rifenbark, Scott M; yocto; Michael Halstead
Subject: Re: poky-extras

On Fri, 2013-06-28 at 14:56 +0100, Richard Purdie wrote:
</pre>
            <blockquote type=3D"cite">
              <pre wrap=3D"">On Fri, 2013-06-28 at 09:40 -0400, Bruce Ash=
field wrote:
</pre>
              <blockquote type=3D"cite">
                <pre wrap=3D"">On 13-06-28 09:22 AM, Rifenbark, Scott M w=
rote:
</pre>
                <blockquote type=3D"cite">
                  <pre wrap=3D"">All I need is the name to make some init=
ial changes.
</pre>
                </blockquote>
                <pre wrap=3D"">Personally, I'm fine with 'meta-yocto-kern=
el'. Naming things is
never easy, so I won't agonize over whether or not an "extras"
should be on the end. But the name should be clear that it isn't
the main yocto kernel, it's just a few crappy bbappends that make
working with it locally easier for some :)

So my only counter proposal is: meta-yocto-kernel-extras

I'm going to de-crapify the bbappends so they are more useful, and
have started on that work, but haven't finished it yet.
</pre>
              </blockquote>
              <pre wrap=3D"">No strong feelings here. I just wiped out me=
ta-linaro from there
</pre>
            </blockquote>
            <pre wrap=3D"">(hoping
</pre>
            <blockquote type=3D"cite">
              <pre wrap=3D"">Darren won't mind) and that checksums.ini fi=
le.
</pre>
            </blockquote>
            <pre wrap=3D"">That's fine, I was just thinking about that la=
st week when I saw Linaro
has a meta-linaro. That's where it belongs, so buh-bye. :-)

--
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel
</pre>
          </blockquote>
        </blockquote>
        <pre wrap=3D"">

</pre>
      </blockquote>
      <pre wrap=3D"">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------070304080407050409020204--

--------------ms060501040904000406070907
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIINjDCCBjQw
ggQcoAMCAQICASAwDQYJKoZIhvcNAQEFBQAwfTELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0
Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcxKTAn
BgNVBAMTIFN0YXJ0Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MB4XDTA3MTAyNDIxMDI1NVoX
DTE3MTAyNDIxMDI1NVowgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSsw
KQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFy
dENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQTCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBAMsohUWcASz7GfKrpTOMKqANy9BV7V0igWdGxA8IU77L3aTxErQ+
fcxtDYZ36Z6GH0YFn7fq5RADteP0AYzrCA+EQTfi8q1+kA3m0nwtwXG94M5sIqsvs7lRP1aycBke
/s5g9hJHryZ2acScnzczjBCAo7X1v5G3yw8MDP2m2RCye0KfgZ4nODerZJVzhAlOD9YejvAXZqHk
sw56HzElVIoYSZ3q4+RJuPXXfIoyby+Y2m1E+YzX5iCZXBx05gk6MKAW1vaw4/v2OOLy6FZH3XHH
tOkzUreG//CsFnB9+uaYSlR65cdGzTsmoIK8WH1ygoXhRBm98SD7Hf/r3FELNvUCAwEAAaOCAa0w
ggGpMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBSuVYNv7DHKufcd
+q9rMfPIHeOsuzAfBgNVHSMEGDAWgBROC+8apEBbpRdphzDKNGhD0EGu8jBmBggrBgEFBQcBAQRa
MFgwJwYIKwYBBQUHMAGGG2h0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbS9jYTAtBggrBgEFBQcwAoYh
aHR0cDovL3d3dy5zdGFydHNzbC5jb20vc2ZzY2EuY3J0MFsGA1UdHwRUMFIwJ6AloCOGIWh0dHA6
Ly93d3cuc3RhcnRzc2wuY29tL3Nmc2NhLmNybDAnoCWgI4YhaHR0cDovL2NybC5zdGFydHNzbC5j
b20vc2ZzY2EuY3JsMIGABgNVHSAEeTB3MHUGCysGAQQBgbU3AQIBMGYwLgYIKwYBBQUHAgEWImh0
dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeS5wZGYwNAYIKwYBBQUHAgEWKGh0dHA6Ly93d3cu
c3RhcnRzc2wuY29tL2ludGVybWVkaWF0ZS5wZGYwDQYJKoZIhvcNAQEFBQADggIBADqpJw3I07QW
ke9plNBpxUxcffc7nUrIQpJHDci91DFG7fVhHRkMZ1J+BKg5UNUxIFJ2Z9B90Micc/NXcs7kPBRd
n6XGO/vPc87Y6R+cWS9Nc9+fp3Enmsm94OxOwI9wn8qnr/6o3mD4noP9JphwUPTXwHovjavRnhUQ
HLfo/i2NG0XXgTHXS2Xm0kVUozXqpYpAdumMiB/vezj1QHQJDmUdPYMcp+reg9901zkyT3fDW/iv
JVv6pWtkh6Pw2ytZT7mvg7YhX3V50Nv860cV11mocUVcqBLv0gcT+HBDYtbuvexNftwNQKD5193A
7zN4vG7CTYkXxytSjKuXrpEatEiFPxWgb84nVj25SU5q/r1Xhwby6mLhkbaXslkVtwEWT3Van49r
KjlK4XrUKYYWtnfzq6aSak5u0Vpxd1rY79tWhD3EdCvOhNz/QplNa+VkIsrcp7+8ZhP1l1b2U6Ma
xIVteuVMD3X0vziIwr7jxYae9FZjbxlpUemqXjcC0QaFfN7qI0JsQMALL7iGRBg7K0CoOBzECdD3
fuZil5kU/LP9cr1BK31U0Uy651bFnAMMMkqhAChIbn0ei72VnbpSsrrSdF0BAGYQ8vyHae5aCg+H
75dVCV33K6FuxZrf09yTz+Vx/PkdRUYkXmZz/OTfyJXsUOUXrym6KvI2rYpccSk5MIIHUDCCBjig
AwIBAgICIgMwDQYJKoZIhvcNAQEFBQAwgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENv
bSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgwNgYD
VQQDEy9TdGFydENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQTAeFw0x
MjA2MTMwNDU5MjlaFw0xNDA2MTQxNjE4MzBaMIGRMRkwFwYDVQQNExBnMDFwWTYwMWJGM1BrRTY3
MQswCQYDVQQGEwJVUzEPMA0GA1UECBMGT3JlZ29uMRIwEAYDVQQHEwlIaWxsc2Jvcm8xGTAXBgNV
BAMTEE1pY2hhZWwgSGFsc3RlYWQxJzAlBgkqhkiG9w0BCQEWGG1pY2hhZWxAeW9jdG9wcm9qZWN0
Lm9yZzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMFZ+GW0VKdiyuQy3hlOvwcHxcm0
8ZwNGGah4zipYky5wVFZO7p9LjJfyF6rvd24xdkaTluxTMmd9pfq2cOVQ6c3RsPufv1yBUbytk6F
4Wk+qD0qEGjuHh5FfakcLIEsHiSn3nzaQZHaolS/yzx/A3coQS8pQrshZYqAF/ME5OxMyL8KDdtk
xatt1reDPqzvI5rKYdeEbmHsTYgd9WWHvs8MfZFHidZoAXMXU+PcsKCUxEYhgP/h9NKcTApu/Mhd
IPKn11pD+gfDM+ochGu1uxuW/t1tNJyRYDVQSDV+rpliQ7mrimSmyktIKkow02pUk4Xw3OqdYq7/
/HpVOUs5nk8CAwEAAaOCA7MwggOvMAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0GA1UdJQQWMBQG
CCsGAQUFBwMCBggrBgEFBQcDBDAdBgNVHQ4EFgQUcZFNotb1OfDmPE6GQ6MQIBh7meUwHwYDVR0j
BBgwFoAUrlWDb+wxyrn3HfqvazHzyB3jrLswIwYDVR0RBBwwGoEYbWljaGFlbEB5b2N0b3Byb2pl
Y3Qub3JnMIICIQYDVR0gBIICGDCCAhQwggIQBgsrBgEEAYG1NwECAjCCAf8wLgYIKwYBBQUHAgEW
Imh0dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeS5wZGYwNAYIKwYBBQUHAgEWKGh0dHA6Ly93
d3cuc3RhcnRzc2wuY29tL2ludGVybWVkaWF0ZS5wZGYwgfcGCCsGAQUFBwICMIHqMCcWIFN0YXJ0
Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MAMCAQEagb5UaGlzIGNlcnRpZmljYXRlIHdhcyBp
c3N1ZWQgYWNjb3JkaW5nIHRvIHRoZSBDbGFzcyAyIFZhbGlkYXRpb24gcmVxdWlyZW1lbnRzIG9m
IHRoZSBTdGFydENvbSBDQSBwb2xpY3ksIHJlbGlhbmNlIG9ubHkgZm9yIHRoZSBpbnRlbmRlZCBw
dXJwb3NlIGluIGNvbXBsaWFuY2Ugb2YgdGhlIHJlbHlpbmcgcGFydHkgb2JsaWdhdGlvbnMuMIGc
BggrBgEFBQcCAjCBjzAnFiBTdGFydENvbSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTADAgECGmRM
aWFiaWxpdHkgYW5kIHdhcnJhbnRpZXMgYXJlIGxpbWl0ZWQhIFNlZSBzZWN0aW9uICJMZWdhbCBh
bmQgTGltaXRhdGlvbnMiIG9mIHRoZSBTdGFydENvbSBDQSBwb2xpY3kuMDYGA1UdHwQvMC0wK6Ap
oCeGJWh0dHA6Ly9jcmwuc3RhcnRzc2wuY29tL2NydHUyLWNybC5jcmwwgY4GCCsGAQUFBwEBBIGB
MH8wOQYIKwYBBQUHMAGGLWh0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbS9zdWIvY2xhc3MyL2NsaWVu
dC9jYTBCBggrBgEFBQcwAoY2aHR0cDovL2FpYS5zdGFydHNzbC5jb20vY2VydHMvc3ViLmNsYXNz
Mi5jbGllbnQuY2EuY3J0MCMGA1UdEgQcMBqGGGh0dHA6Ly93d3cuc3RhcnRzc2wuY29tLzANBgkq
hkiG9w0BAQUFAAOCAQEANR/d6M8GHL/rkx3Kz9ILDxYMcekmFgefaDXNQMicUHiUw5TsIl5af1pS
Y2AvbKlA2/FZnyG8w42FuK6ZQBZJxs4/N10NW8qDmuuFTi6TyJgurj73tx9RogW50miDHMZLoMRe
avB1h8zy99L2lRPZSebpSFkrQdYDHaGRVhYMjEcWNW9cLxhR8BaAEw/KlpERv3hUQpwGMppYOE66
M7KJ3HpeR7DXfa4njL9W2hukTQNsskdWtzejHp5iQ65+5Mv+NXLmYP4uLJcR9AbttgNhwStc0P1b
LxnQkElGeUzATOBq+QsVZ7Fo6sSS7kqrhpfaPibqpj83m/wSgpKVsbZJ3DGCA9owggPWAgEBMIGT
MIGMMQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJl
IERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYGA1UEAxMvU3RhcnRDb20gQ2xhc3MgMiBQ
cmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQgQ0ECAiIDMAkGBSsOAwIaBQCgggIbMBgGCSqGSIb3
DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTEzMDcwMTA2MTgyMlowIwYJKoZIhvcN
AQkEMRYEFF6n54HbA+ElJlKFLEQ1Yf3fNBoAMGwGCSqGSIb3DQEJDzFfMF0wCwYJYIZIAWUDBAEq
MAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAw
BwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgaQGCSsGAQQBgjcQBDGBljCBkzCBjDELMAkGA1UEBhMC
SUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRp
ZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDIgUHJpbWFyeSBJbnRlcm1l
ZGlhdGUgQ2xpZW50IENBAgIiAzCBpgYLKoZIhvcNAQkQAgsxgZaggZMwgYwxCzAJBgNVBAYTAklM
MRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZp
Y2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRp
YXRlIENsaWVudCBDQQICIgMwDQYJKoZIhvcNAQEBBQAEggEAlqya6SR8imA2A7E9jsh758FNlYyX
HX40ckb5sYhDXkdPhoS/RhT/P7fDOwqZlwD7kgepcIlDBVHrLJxpWVieV+RpHKvt8J8t6HJWedxa
HV766Bm5FRy6JulihOCtNLUUtuphJsKLMdLlHvnXs5mXKPQ3Nb047ZTebNLo9pl7PN7v1eAShWaZ
tpLeJi2bAgIR9OA45BY0kPedFtzBQPxuu3ZuumeZPQNmbldWEokzDNnGzo0Yb+RCIDaouq92AdVs
GnZchDXjJQQx2PG5tx+8WrdHwftSX34Zg9QiALV8OsJDBXP4BvDa2JclHrOpH+ELC1eTPGzxmKG0
yUCFpxCPHQAAAAAAAA==

--------------ms060501040904000406070907--
