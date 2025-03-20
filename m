Return-Path: <william.martin@muxen.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADD6C28B30
	for <webhook@archiver.kernel.org>; Thu, 20 Mar 2025 18:40:14 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web10.2577.1742496010361054875
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Mar 2025 11:40:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@muxen.fr header.s=gm1 header.b=TkV0SaV6;
 spf=pass (domain: muxen.fr, ip: 217.70.183.200, mailfrom: william.martin@muxen.fr)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 63C0A44240
	for <yocto@lists.yoctoproject.org>; Thu, 20 Mar 2025 18:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=muxen.fr; s=gm1;
	t=1742496008;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=BQb3DBDRO/ljEjafRbSnZTEWEYJclGP+ANl4zIHFJW8=;
	b=TkV0SaV6CzeUhSwnM3h6Bx+hdoohGmXmd9ezsIA/xfgTs0nlQJ+PQW3yarHrcqjdYxpKuo
	o8ZcGsTAVHhFf6W5cqA0YbVsMulnnQRBzuxLXG5h2wXFaVK+d18r6eQWdzcdQFcyb0wszz
	M7MhWHZeiHVuhB6FORnAs8sXykuYUsE68veElza+4yeoahRovzfJNgERnB150hPBcf5kq4
	82amWLs+fX0n8+8BfnedaVVliF1Irv7WlcB4vkm/JlhrbTyPLqTPffB+oywqMVB8MmVK7Z
	KSadAmMWbE9Z867Ig/jLV9XAJqczz9kUM8vavO7eU9rbwR0N8IxXKZCscScYMQ==
Content-Type: multipart/alternative;
 boundary="------------Zp09AOQfjd0vcnGtJV6hawMQ"
Message-ID: <975bd8bc-c4a8-4927-ae48-fde101bfbf7f@muxen.fr>
Date: Thu, 20 Mar 2025 19:40:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: William MARTIN <william.martin@muxen.fr>
Subject: Using a python3 native module during do_fetch
To: yocto@lists.yoctoproject.org
Content-Language: en-US
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddugeekleeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecunecujfgurheptgfkffggfgfhuffvsegrtderredtvdejnecuhfhrohhmpeghihhllhhirghmucfoteftvffkpfcuoeifihhllhhirghmrdhmrghrthhinhesmhhugigvnhdrfhhrqeenucggtffrrghtthgvrhhnpeevheeufffhheevhfekveefvdevudeikeehleevkedtveevkedvgfffveeuhfffteenucffohhmrghinhepghhithhhuhgsrdgtohhmnecukfhppedvrgdtudemvgdtrgemsgektdemfhejtdemgeekudgsmeegugektdemfhegsggumeeifhefheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedvrgdtudemvgdtrgemsgektdemfhejtdemgeekudgsmeegugektdemfhegsggumeeifhefhedphhgvlhhopeglkffrggeimedvrgdtudemvgdtrgemsgektdemfhejtdemgeekudgsmeegugektdemfhegsggumeeifhefhegnpdhmrghilhhfrhhomhepfihilhhlihgrmhdrmhgrrhhtihhnsehmuhigvghnrdhfrhdpnhgspghrtghpthhtohepuddprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrgh
X-GND-Sasl: william.martin@muxen.fr
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Mar 2025 18:40:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64995

This is a multi-part message in MIME format.
--------------Zp09AOQfjd0vcnGtJV6hawMQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

    Hi,


I have write a custom fetcher for Gitlab Artifiacts based on the python3 
module "python_gitlab".
The fetcher works fine if the python module is installed using pip on 
the build machine.

I have create a recipe for the "python_gitlab" module to try to make the 
fetcher works without the pip module pre-installed.
The package python3-python-gitlab-native seem created.

But the do_fetch seem to be executed using the build machine python, so 
the python module is unavailable.
Does someone have any tips to add a ***wrapper*** to ensure the fetch is 
done using the python3 build by yocto ?

Regards,

William



python3-python-gitlab_5.6.0.bb

SUMMARY = "Access to the GitLab APIs."
HOMEPAGE = "https://github.com/python-gitlab/python-gitlab"
LICENSE = "LGPL-3.0-only"
LIC_FILES_CHKSUM = "file://COPYING;md5=e6a600fd5e1d9cbde2d983680233ad02"
PYPI_PACKAGE="python_gitlab"
SRC_URI[sha256sum] = 
"bc531e8ba3e5641b60409445d4919ace68a2c18cb0ec6d48fbced6616b954166"
RDEPENDS:${PN} += " \
     python3-requests-toolbelt \
"
inherit pypi python_setuptools_build_meta
BBCLASSEXTEND = "native nativesdk"


python3-requests-toolbelt_%.bbappend

BBCLASSEXTEND = "native nativesdk"


conf/layer.conf

addpylib ${LAYERDIR}/lib muxen

classes/artifact-fetch.bbclass

#
# artifact-fetch class
#
# Registers 'artifact' method for Bitbake fetch2.
#
# Adds support for following format in recipe SRC_URI:
# 
artifact://<projectGitlabURL>;version<version>;job=<jobName>;auth=<authToken>
#
# Install python_gitlab on the host
# pip install --break-system-packages python_gitlab
#
# Add authentification token per host in your build/conf/local.conf
# GITLAB_AUTH_WWW_EXEMPLE_COM = "glpat-56123sdc6sdHHHHHHfsd"

do_unpack[depends] += "unzip-native:do_populate_sysroot"
S = "${WORKDIR}/sources-unpack"

do_fetch[depends] += "python3-python-gitlab-native:do_populate_sysroot"

python () {
from muxen import artifact
bb.fetch2.methods.append( artifact.Artifact() )
}



--------------Zp09AOQfjd0vcnGtJV6hawMQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <blockquote>Hi,<br>
    </blockquote>
    <br>
    I have write a custom fetcher for Gitlab Artifiacts based on the
    python3 module "python_gitlab".<br>
    The fetcher works fine if the python module is installed using pip
    on the build machine.<br>
    <br>
    I have create a recipe for the "python_gitlab" module to try to make
    the fetcher works without the pip module pre-installed.<br>
    The package python3-python-gitlab-native seem created.<br>
    <br>
    But the do_fetch seem to be executed using the build machine python,
    so the python module is unavailable.<br>
    Does someone have any tips to add a ***wrapper*** to ensure the
    fetch is done using the python3 build by yocto ?<br>
    <br>
    Regards,<br>
    <br>
    William<br>
    <br>
    <br>
    <br>
    python3-python-gitlab_5.6.0.bb<br>
    <br>
    SUMMARY = "Access to the GitLab APIs."<br>
    HOMEPAGE = <a class="moz-txt-link-rfc2396E" href="https://github.com/python-gitlab/python-gitlab">"https://github.com/python-gitlab/python-gitlab"</a><br>
    LICENSE = "LGPL-3.0-only"<br>
    LIC_FILES_CHKSUM =
    <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=e6a600fd5e1d9cbde2d983680233ad02">"file://COPYING;md5=e6a600fd5e1d9cbde2d983680233ad02"</a><br>
    PYPI_PACKAGE="python_gitlab"<br>
    SRC_URI[sha256sum] =
    "bc531e8ba3e5641b60409445d4919ace68a2c18cb0ec6d48fbced6616b954166"<br>
    RDEPENDS:${PN} += " \<br>
        python3-requests-toolbelt \<br>
    "<br>
    inherit pypi python_setuptools_build_meta<br>
    BBCLASSEXTEND = "native nativesdk"<br>
    <br>
    <br>
    python3-requests-toolbelt_%.bbappend<br>
    <br>
    BBCLASSEXTEND = "native nativesdk"<br>
    <br>
    <br>
    conf/layer.conf<br>
    <br>
    addpylib ${LAYERDIR}/lib muxen<br>
    <br>
    classes/artifact-fetch.bbclass<br>
    <br>
    #<br>
    # artifact-fetch class<br>
    #<br>
    # Registers 'artifact' method for Bitbake fetch2.<br>
    #<br>
    # Adds support for following format in recipe SRC_URI:<br>
    #
artifact://&lt;projectGitlabURL&gt;;version&lt;version&gt;;job=&lt;jobName&gt;;auth=&lt;authToken&gt;<br>
    #<br>
    # Install python_gitlab on the host<br>
    # pip install --break-system-packages python_gitlab<br>
    #<br>
    # Add authentification token per host in your build/conf/local.conf<br>
    # GITLAB_AUTH_WWW_EXEMPLE_COM = "glpat-56123sdc6sdHHHHHHfsd"<br>
    <br>
    do_unpack[depends] += "unzip-native:do_populate_sysroot"<br>
    S = "${WORKDIR}/sources-unpack"<br>
    <br>
    do_fetch[depends] +=
    "python3-python-gitlab-native:do_populate_sysroot"<br>
    <br>
    python () {<br>
    from muxen import artifact<br>
    bb.fetch2.methods.append( artifact.Artifact() )<br>
    }<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------Zp09AOQfjd0vcnGtJV6hawMQ--

