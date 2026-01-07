Return-Path: <daniil.klimuk@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6076CFD65A
	for <webhook@archiver.kernel.org>; Wed,  7 Jan 2026 15:46:26 +0000 (UTC)
Received: from 17.mo581.mail-out.ovh.net (17.mo581.mail-out.ovh.net [188.165.35.227])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.8911.1767800778497215886
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jan 2026 07:46:19 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@3mdeb.com header.s=ovhmo3617313-selector1 header.b=l5iInfow;
 spf=softfail (domain: 3mdeb.com, ip: 188.165.35.227, mailfrom: daniil.klimuk@3mdeb.com)
Received: from director1.ghost.mail-out.ovh.net (unknown [10.109.254.117])
	by mo581.mail-out.ovh.net (Postfix) with ESMTP id 4dmXSl6nfPz6V59
	for <yocto@lists.yoctoproject.org>; Wed,  7 Jan 2026 15:46:15 +0000 (UTC)
Received: from ghost-submission-7d8d68f679-hp6jb (unknown [10.110.96.141])
	by director1.ghost.mail-out.ovh.net (Postfix) with ESMTPS id B41C1C14CD;
	Wed,  7 Jan 2026 15:46:14 +0000 (UTC)
Received: from 3mdeb.com ([37.59.142.100])
	by ghost-submission-7d8d68f679-hp6jb with ESMTPSA
	id JZbNIcZ/XmmDAAAA71fThw
	(envelope-from <daniil.klimuk@3mdeb.com>); Wed, 07 Jan 2026 15:46:14 +0000
Authentication-Results: garm.ovh; auth=pass (GARM-100R003a895d0d5-3edf-4ef7-8c77-d93ed593f0a0,
                    EF910CBAB92D9D5A8FC2FD67CDF81DD5CB833AA5) smtp.auth=daniil.klimuk@3mdeb.com
X-OVh-ClientIp: 213.192.77.249
Message-ID: <b793f381-a445-4b58-9f51-04b6b5c8fec5@3mdeb.com>
Date: Wed, 7 Jan 2026 16:46:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Dynamically load patch series from fetched repositories.
To: Ross Burton <Ross.Burton@arm.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>,
 "piotr.krol@3mdeb.com" <piotr.krol@3mdeb.com>
References: <ec947ba6-a232-4ee2-ae6f-17e51fdd6d30@3mdeb.com>
 <5E833BE4-1E22-43E4-A99D-8BB0FA077982@arm.com>
Content-Language: en-US
From: Danill Klimuk <daniil.klimuk@3mdeb.com>
Autocrypt: addr=daniil.klimuk@3mdeb.com; keydata=
 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
 x3ry0XT0
Organization: 3mdeb
In-Reply-To: <5E833BE4-1E22-43E4-A99D-8BB0FA077982@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Ovh-Tracer-Id: 9207327963870434320
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTFcWR1PES9Xzxpjp1yU7CWVe8pFk7ACtiA7Fif9DMiHTVEFJyoPCsekPm28CK5/rg5N6GuPhTXEVl4+pS4S2o82JZ1i1JN7Id2cLIhnu/qQdh08nXGBWYO08TFdYtPrF6Yj0TL9A20/2LeGHpY19/+5T/dhZYlnvsbsjINqlqAQfYfA9KmcHpe2Ys1VVzH3VOxqOgSe/cn5rw76eTuRAZvF3SeAxgOe6sr7L0g7oIVDH5oWdNZ0OLCkUZ2mLKI/h2Z8gqzEYnEdOor8giIAA46hE+hVzADoUwjfx9v0RIQ8Vk/FeTA/bmP8IYftBMSnQUSGTgVWrq5Cr1ilhV9EvI4RoodBR3dEBWo5vXIgC9OzKczpqSg7uVB8930kRDCoUqJdvE5RNNFJTapFxiVi5Au6h76zafPunbvsIYVT0hWdYnERhAPpu7M9KNaXhBLQI9AEgOvfQWBC2kNP8m1lCO+GlhZbJ+MwiO2aUsiOynNqtDrSookOgrXvLgcfQHtaNX2iBdaJJv4YD8uf0wTrbbAkueS2MDAM7PQP6bwosdW4Qq52gF7Sq/1ux+co+vtbPPSpLywAkBbbb6uTULzFlBKB6fCjabP/Z93MrF/MR8SbAfo6JrvX+IzVqvBIkR2DGEIjvY82KMTOH3vV8wnA8jeTJ2vZ8t7s/tNw4w4I6JLing
DKIM-Signature: a=rsa-sha256; bh=iEwPH72b0cistjTxHTffyXvelNf9ie7zEE9YC7r3Rj0=;
 c=relaxed/relaxed; d=3mdeb.com; h=From; s=ovhmo3617313-selector1;
 t=1767800776; v=1;
 b=l5iInfowJWOAOkHOTZGGPU5b3EE99K+/oFFacbhvPt3r0dD9OBA6cvL9JgI7vuc3QI2Y4GFT
 BYTLMEfjoOL6jJvQtOM3mx12MhJHu452+pqjY0xVM/dVPtqjHTsp7GgR/LeVAJw2Px+ykQlT5Pu
 1YRNwjnOEQbphw2G47PrVKt8PRdFVbd6szbW14lAuSwgN4WKEVVbgC3yrahHoPmCo2vxJXVpoRl
 +Md62ALveZtL+Xlyvy3DBvjUER4kNIVxWHs+zOBxUgJ5W8r59vvyRKuEE4RvW5lUaNyrqOX09QR
 SsokJkfRaWGVBuYDAed/byW+99Im5Ft/ab1+9nGckrNeg==
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jan 2026 15:46:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66135

On 1/5/26 12:35 PM, Ross Burton wrote:
> On 29 Dec 2025, at 15:16, Danik via lists.yoctoproject.org <daniil.klim=
uk=3D3mdeb.com@lists.yoctoproject.org> wrote:
>> Hi everyone. I am looking for a way to use patches in recipes without =
adding them to layers and then mentioning directly in SRC_URI. An example=
 workflow would be:
>>
>> 1. Fetch a repository that is added in SRC_URI, using either git or ot=
her available methods.
>> 2. Check out the specific head in the repository  (a branch or a commi=
t).
>> 3. Let do_fetch or do_patch search for either a "series" file or a lis=
t of patches in the repository.
>> 4. Apply the patches.
>>
>> The only problem I see in the proposed flow is the 3rd step. Some repo=
sitories may contain patches that could be applied to different tools or =
packages. And a recipe that is responsible for a package A can try to app=
ly patches for a package B that is being stored in the same repository wi=
th patches. Hence, the 3rd step should be restricted somehow. An example =
could be a variable that will point out the place in the repository with =
patches where the recipe for package A should search patches. The variabl=
e can utilize overrides to customize patch queues further.
>>
>> An example of the repository with patches can be found here: https://g=
ithub.com/Dasharo/dasharo-pq/tree/flashrom-testing/flashrom . The idea he=
re is not to copy and paste the huge amount of patches into different bui=
ld systems, but to have a single place where all patches are added and ma=
intained. Other pros for this solution:
> A repository that contains patches for itself is slightly unhinged (jus=
t make a new point release), but I do work with repositories that depend =
on and statically link to other projects so carry patches in-tree for the=
m.
>
> We=E2=80=99ve got a class that applies the in-tree patches in a task af=
ter do_patch: https://git.yoctoproject.org/meta-arm/tree/meta-arm/classes=
/apply_local_src_patches.bbclass.  It=E2=80=99s not ideal, but it works.
>
> Ross


Thank you for all your suggestions.

 > A repository that contains patches for itself is slightly unhinged=20
(just make a new point release), but I do work with repositories that=20
depend on and statically link to other projects so carry patches in-tree=20
for them. I have another use-case. The repository=20
https://github.com/Dasharo/dasharo-pq contains or will contain not=20
patches for itself, but will gather all patches from Dasharo=20
organization for different upstreams (in this example it is flashrom) in=20
one place, which will simplify upstreaming and maintaining the patches.

--=20
Best regards, Daniil Klimuk.
3mdeb Zarhus Team Leader.
https://3mdeb.com | @3mdeb_com


