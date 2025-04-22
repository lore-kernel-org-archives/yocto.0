Return-Path: <denisova.olga.k@yandex.ru>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C870BC369C2
	for <webhook@archiver.kernel.org>; Tue, 22 Apr 2025 16:58:37 +0000 (UTC)
Received: from forward100a.mail.yandex.net (forward100a.mail.yandex.net [178.154.239.83])
 by mx.groups.io with SMTP id smtpd.web11.45446.1745341115761954323
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Apr 2025 09:58:36 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@yandex.ru header.s=mail header.b=q107k85O;
 spf=pass (domain: yandex.ru, ip: 178.154.239.83, mailfrom: denisova.olga.k@yandex.ru)
Received: from mail-nwsmtp-smtp-production-main-92.vla.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-92.vla.yp-c.yandex.net [IPv6:2a02:6b8:c15:2ea0:0:640:5268:0])
	by forward100a.mail.yandex.net (Yandex) with ESMTPS id 90E12472EB;
	Tue, 22 Apr 2025 19:58:32 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-92.vla.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id VwRdYq5LjCg0-BQRkxnQQ;
	Tue, 22 Apr 2025 19:58:32 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
	t=1745341112; bh=rzwNA4U9h58eEby2BODEe2LnUt/dgcUVA1rhO34JFM0=;
	h=Message-Id:Date:Cc:Subject:To:From;
	b=q107k85OXgdYykvLuWrHyxM+eNUPKPA0d0qSgB2lk+2SzJo35tSSSO0R6BqNZR1bZ
	 mygjhlAQr67HkAbqIxO/MxS95Wr6lpShSyvZ8IfcmwKq72NCSReHmGuEDnTV7B6BZa
	 4eskzw5E7JlcIjsA6myVY5Txli4Wy2S62hRy3JQs=
Authentication-Results: mail-nwsmtp-smtp-production-main-92.vla.yp-c.yandex.net; dkim=pass header.i=@yandex.ru
From: denisova-ok <denisova.olga.k@yandex.ru>
To: yocto@lists.yoctoproject.org
Cc: gavrilov.andrew1999@yandex.ru,
	tinyakovx@gmail.com,
	sider123456789101112131415@gmail.com,
	denisova-ok <denisova.olga.k@yandex.ru>
Subject: [PATCH 0/3] Add support for index files in SSTATE_MIRRORS
Date: Tue, 22 Apr 2025 19:58:19 +0300
Message-Id: <20250422165822.92784-1-denisova.olga.k@yandex.ru>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Apr 2025 16:58:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65226

Description of Changes
When building an image, the system uses a cache to avoid re-running tasks=
. When the ` sstate-cache ` directory is empty or the required cache file=
 is missing, the system searches for files on cache mirrors defined in ` =
SSTATE_MIRRORS `. However, the system's lack of information about the dis=
tribution of cache files among cache mirrors results in requests for file=
s being sent to all specified cache mirrors. This increases the number of=
 requests, especially if the number of mirrors is large. The patchset add=
resses this issue by pre-fetching index files from each cache mirror befo=
re checking for the presence of cache files. The index file contains data=
 about the contents of the cache mirror, allowing the system to send requ=
ests directly to the relevant cache mirrors, reducing the overall number =
of requests and making them independent of the number of cache mirrors sp=
ecified in the configuration.

Behavior Types Based on Index File Presense, Validity and Invalidity
The patchset supports two operating modes: full trust mode and recheck mo=
de. The mode selection is done by setting the ` RELY_ON_INDEX_FILES ` var=
iable in ` local.conf `. If this variable is set to "1", the trust mode i=
s enabled, where only the information from the index files is used. Other=
wise, if the variable is not set or has a different value, the recheck mo=
de is activated.

The patchset's algorithm includes the following steps:
1. Sending requests to retrieve index files from all cache mirrors specif=
ied in ` SSTATE_MIRRORS `
    - 1.1. If the request is successful, the information about the cache =
files from the mirror is considered, and the mirror is added to the list =
of checked mirrors.
    - 1.2. If the request is unsuccessful, nothing happens.
2. Analyzing the information about cache files present on the cache mirro=
rs to match the required build tasks. Complete information is gathered ab=
out which tasks are found on the cache mirrors through the analysis of in=
dex files, and on which mirrors they are located. Also, sets of found and=
 not found tasks are collected to search for the remaining tasks not foun=
d (the specific algorithm depends on the mode).
3. If trust mode (` RELY_ON_INDEX_FILES =3D=3D "1" `) was set, then:
    - 3.1. If some of the cache mirrors specified in ` SSTATE_MIRRORS ` r=
emain unchecked (e.g., the index file was missing on the mirror), these m=
irrors are then checked using the classic algorithm for the presence of c=
ache files corresponding to the not found tasks. The found tasks are adde=
d to those already found using the index files.
    - 3.2. If all mirrors were successfully checked, the mirrors checking=
 process ends.
4. If recheck mode was set, then:
    - 4.1. If some tasks remain not found, the classic algorithm will sen=
d requests to search for cache files corresponding to these tasks on all =
cache mirrors specified in ` SSTATE_MIRRORS `. Thus, the situation where =
the index file is somewhat outdated (a cache file appeared on the cache m=
irror, but there is no information about it in the index file) is taken i=
nto account.
    - 4.2. If all tasks are found, or all requests for not found tasks ar=
e completed, the algorithm ends.
5. Cache file download stage:
    - 5.1. If information about the location of the desired cache file is=
 available, the request is sent to the corresponding cache mirror.
        - 5.1.1. If the cache file is found on the specified cache mirror=
, it is downloaded.
        - 5.1.2. If the request to the required cache mirror is unsuccess=
ful for some reason, all cache mirrors specified in ` SSTATE_MIRRORS ` ar=
e then queried. Thus, the situation where the cache mirror became unavail=
able after the mirrors checking, but the necessary cache file can be obta=
ined from another cache mirror, is taken into account.
    - 5.2. If there is no information about the location of the desired c=
ache file, requests will be sent to all cache mirrors from ` SSTATE_MIRRO=
RS ` according to the classic algorithm.

Architecture of Changes
1. Addition of the ` compose_index_files ` function:
    - Implemented in the ` meta/classes-global/sstate.bbclass`  class to =
send requests for retrieving index files from cache mirrors.
    - The call to this function is integrated into the process before sta=
rting the hash check (` BB_HASHCHECK_FUNCTION `) in the ` bitbake/lib/bb/=
runqueue.py ` file.

2. Modification of the ` sstate_checkhashes ` function (` meta/classes-gl=
obal/sstate.bbclass `):
    - The function now analyzes the information about cache files obtaine=
d from index files and forms a new data structure =E2=80=94 ` file_mirror=
_map `. This structure stores information about the distribution of cache=
 files across cache mirrors and is written to the storage.
    - The logic for handling tasks not found using index files varies dep=
ending on the selected mode and is described in the section "Behavior Typ=
es Based on Index File Presence, Validity, and Invalidity" (points 3, 4).
3. Use of the ` file_mirror_map ` structure:
    - After formation and saving, the structure is then read in bitbake/l=
ib/bb/runqueue.py for passing to the bitbake-worker function.
    - In ` /bitbake/bin/bitbake-worker `, the ` file_mirror_map ` structu=
re is received and used to pass information about the location of cache f=
iles. This ensures the availability of information about the location of =
cache files during subsequent downloads.
4. Modification of the pstaging_fetch function (` meta/classes-global/sst=
ate.bbclass `):
    - If the location of the cache file is known, the request is sent dir=
ectly to the cache mirror specified in ` file_mirror_map `.
    - If the location is unknown, requests are sent in order to all cache=
 mirrors according to the ` SSTATE_MIRRORS`  list.

Enabling Patchset Functionality
1. Apply the patchset.
2. Add the line  `SSTATE_MIRRORS_INDEX_FILES =3D "1" ` to ` local.conf ` =
to enable support for index files.
3. Additionally, to activate trust mode, add ` RELY_ON_INDEX_FILES =3D "1=
" `.

Patchset's Limitations
1. Retrieval of the index file is only available over http/https and ftp =
protocols.
2. The patchset does not consider situations where cache mirrors with the=
 desired cache file were available at the time of checking but became una=
vailable when attempting to retrieve the cache file. Additionally, it doe=
s not account for situations where index files indicate the presence of a=
 file that is actually missing from all cache mirrors (if it exists on at=
 least one cache mirror, it will be retrieved).

Index File Update
The person deploying the cache mirror is responsible for updating/refresh=
ing the index file.

Olga Denisova (3):
  bitbake-worker: support file_mirror_map transfer from runqueue for
    optimized cache fetch
  runqueue: initialize collection and forwarding of cache distribution
    from SSTATE_MIRRORS
  sstate.bbclass: collect and process index file data, update fetch
    logic

 bitbake/bin/bitbake-worker         |   4 +
 bitbake/lib/bb/runqueue.py         |  34 ++++++--
 meta/classes-global/sstate.bbclass | 135 +++++++++++++++++++++++++----
 3 files changed, 151 insertions(+), 22 deletions(-)

--=20
2.34.1


