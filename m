Return-Path: <daniil.klimuk@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F93E92734
	for <webhook@archiver.kernel.org>; Mon, 29 Dec 2025 15:16:33 +0000 (UTC)
Received: from 5.mo581.mail-out.ovh.net (5.mo581.mail-out.ovh.net [178.32.120.239])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.44886.1767021386369913040
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Dec 2025 07:16:27 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@3mdeb.com header.s=ovhmo3617313-selector1 header.b=LYKRkQQ+;
 spf=softfail (domain: 3mdeb.com, ip: 178.32.120.239, mailfrom: daniil.klimuk@3mdeb.com)
Received: from director10.ghost.mail-out.ovh.net (unknown [10.109.254.190])
	by mo581.mail-out.ovh.net (Postfix) with ESMTP id 4dg0DS1mxBz5xX6
	for <yocto@lists.yoctoproject.org>; Mon, 29 Dec 2025 15:16:23 +0000 (UTC)
Received: from ghost-submission-7d8d68f679-pwml8 (unknown [10.111.182.237])
	by director10.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 8DF4DC0F4E;
	Mon, 29 Dec 2025 15:16:23 +0000 (UTC)
Received: from 3mdeb.com ([37.59.142.111])
	by ghost-submission-7d8d68f679-pwml8 with ESMTPSA
	id 92apCEebUmmypCYAvvdGeg
	(envelope-from <daniil.klimuk@3mdeb.com>); Mon, 29 Dec 2025 15:16:23 +0000
Authentication-Results: garm.ovh; auth=pass (GARM-111S0050e5e42ae-1c4c-427c-b077-a3bf721bb760,
                    6F64A10C1D0CE58CE329BB858DC4AFDCD05F0F8B) smtp.auth=daniil.klimuk@3mdeb.com
X-OVh-ClientIp: 213.192.77.249
Message-ID: <ec947ba6-a232-4ee2-ae6f-17e51fdd6d30@3mdeb.com>
Date: Mon, 29 Dec 2025 16:16:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
Cc: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>,
 "piotr.krol@3mdeb.com" <piotr.krol@3mdeb.com>
From: Danill Klimuk <daniil.klimuk@3mdeb.com>
Subject: Dynamically load patch series from fetched repositories.
Autocrypt: addr=daniil.klimuk@3mdeb.com; keydata=
 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
 x3ry0XT0
Organization: 3mdeb
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Ovh-Tracer-Id: 11188911801580819472
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTFclavVnn7Xh62WupG8X79LEvHbrvG4W53P1ccJKYAdNxYaM75GjIIb9urRmvCNdDE7VYrr7osc0u1eeG12mUjAIGvITpgk6LhyCW3vjpJD1XAAjrUDpy3SBfl65X4IaxGGrc3VEVcr1a01jXWTlv9FFQqGZcahOlMMXPhDkPzcTJHXz1tcPm2xp8uIzk1E2I0MmqgP2v3cyqUIgsDHgww9HhWY8bdGNK7hcHerRzwJmPkq83ShF04DW1AXje5FVO3wEwOS2vrxQvuT4Pfp2ys778ePk1ANnzyHXGL4euqEDEHdAqHTq5o9bbr5mUBrsyuLFj7uzX9Rq+SwConUAToTSr7FGqRfy+ZbF08gOISnlfK9nt4u7RgAlsj6p2E+hv8t8mpXsLIKX0C0TL1rTiTVQIGRrWBnwrbeZKwhTWq7B4QZqI53lzeG+7IpoQxOM4kNYVO6PIllp1v/oexBTfmE5j5sdcykKx4iOgKQdhw/1iB11z1aZ2HXWA8Qzj+Mm34wmB29rkPEeeS9GfBg5Ee7K0YDSqb51Fdc5JoMXyndwKqDGFBKHkrVMMsT7QwXe1WC12lMC+8nU7tGeMGsBtx0Y0IyM4XZyuw4Gtyh+3115vIo1lN6u4f9lrQ+/UIuMSS0WjABrdGZTH+H56z4Vw3oX/mhGUFZB9ccTp8dRgyBow
DKIM-Signature: a=rsa-sha256; bh=vKBuBmk3sZJQY2FsvXm8qAWDLkkJQgmqQ3jFNEdz82E=;
 c=relaxed/relaxed; d=3mdeb.com; h=From; s=ovhmo3617313-selector1;
 t=1767021384; v=1;
 b=LYKRkQQ+aoQlzfa6wgRVNgxoJ+6aXxUt2dtQWgTXoDJMESpCFGdEogX9KH8eqM47m0CeJZS8
 CBo3398hnZa5zDRUSLLEE98Ol0HDgMLR9mui3/BtmAxOKQNDKcrorHCqRBGj2BX6VBPLxYvJQqj
 2snn6DVEl15zzBLybfACTMvS81b/bMshMhEGJezb40p3HacfXI/GOkG+6ZvogjNvlt8e29Zp+us
 elvrPxnqR9sWUHXH8xqO5yTiShxrT37nx41kZClBLlkd7cSHYEV064OhEjtFauTGXyunbtDvyEf
 tOQ/x9KBLvdbzNxfo8usmAFIMs5JyVI9ajkAhY9k8UHGQ==
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Dec 2025 15:16:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66127

Hi everyone. I am looking for a way to use patches in recipes without=20
adding them to layers and then mentioning directly in SRC_URI. An=20
example workflow would be:

1. Fetch a repository that is added in SRC_URI, using either git or=20
other available methods.
2. Check out the specific head in the repository=C2=A0 (a branch or a com=
mit).
3. Let do_fetch or do_patch search for either a "series" file or a list=20
of patches in the repository.
4. Apply the patches.

The only problem I see in the proposed flow is the 3rd step. Some=20
repositories may contain patches that could be applied to different=20
tools or packages. And a recipe that is responsible for a package A can=20
try to apply patches for a package B that is being stored in the same=20
repository with patches. Hence, the 3rd step should be restricted=20
somehow. An example could be a variable that will point out the place in=20
the repository with patches where the recipe for package A should search=20
patches. The variable can utilize overrides to customize patch queues=20
further.

An example of the repository with patches can be found here:=20
https://github.com/Dasharo/dasharo-pq/tree/flashrom-testing/flashrom .=20
The idea here is not to copy and paste the huge amount of patches into=20
different build systems, but to have a single place where all patches=20
are added and maintained. Other pros for this solution:

* Clear separation of concerns: Build systems remain focused on=20
configuration and integration logic, while patch content and maintenance=20
are handled elsewhere. This keeps repositories smaller, cleaner, and=20
easier to reason about.
* Single source of truth: A centralized patch repository establishes a=20
clear, authoritative source for all modifications. This avoids ambiguity=20
about which patch version is =E2=80=9Ccorrect=E2=80=9D and prevents subtl=
e divergences=20
that can arise when the same patch is copied and slightly adjusted=20
across multiple build systems.
* Simplified updates and backports: Bug fixes, improvements, or rebases=20
of patches need to be done only once. Downstream users automatically=20
benefit from updates without having to manually replicate changes or=20
re-evaluate multiple patch copies.
* Reduced review and validation effort: Code review, testing, and=20
validation can focus on a single patch location. This is especially=20
valuable for large or security-sensitive patch sets, where duplicated=20
reviews across repositories would waste time and increase the chance of=20
missed issues.
* Improved traceability and auditing: A centralized repository provides=20
a complete history of why and when patches were introduced, modified, or=20
dropped. This is important for audits, compliance requirements, and=20
post-mortem analyses, especially in firmware or low-level tooling context=
s.
* Lower risk during upstream transitions: When patches are eventually=20
upstreamed or dropped due to new upstream releases, central management=20
ensures that all consumers transition in lockstep. This avoids=20
situations where some build systems still rely on patches that are no=20
longer needed, or worse: no longer compatible.

Let me know if you have a better proposition for the implementation flow=20
I have presented, or if I have missed some already existing technology=20
in the Yocto Project. Either my colleagues or I would be eager to=20
contribute such a feature to the project.

--=20
Best regards, Daniil Klimuk.
3mdeb Zarhus Team Leader.
https://3mdeb.com | @3mdeb_com


