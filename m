Return-Path: <n.jeker@delisys.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12D06C43334
	for <webhook@archiver.kernel.org>; Tue, 12 Jul 2022 14:22:20 +0000 (UTC)
Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de
 [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web09.9854.1657635732032824417
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 07:22:12 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 84-75-156-97.dclient.hispeed.ch ([84.75.156.97]
 helo=station.local); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1oBGm9-0006IS-Ki; Tue, 12 Jul 2022 16:22:09 +0200
Message-ID: <1409eafd6829239effb96306ff724c76a49f7a0a.camel@delisys.ch>
Subject: Re: [yocto] How to get license text
From: Nicolas Jeker <n.jeker@delisys.ch>
To: William Huang <whuang8933@gmail.com>, yocto@lists.yoctoproject.org
In-Reply-To: <3g66.1657558820921988336.0Jjd@lists.yoctoproject.org>
References: <3g66.1657558820921988336.0Jjd@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Jul 2022 16:22:08 +0200
MIME-Version: 1.0
User-Agent: Evolution 3.44.3 
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1657635732;41294ed9;
X-HE-SMSGID: 1oBGm9-0006IS-Ki
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Jul 2022 14:22:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57510

On Mon, 2022-07-11 at 10:00 -0700, William Huang wrote:
> Hi,
> I was wondering if it is possible to get the license information for
> all of the deployed packages in the image? I know there's a
> license.manifest file in deploy/licenses, but I'm looking for a file
> that includes that manifest as well as the paragraph associated with
> the license. Closest I found was in the /usr/share/common-license
> folder which has the LICENSE or COPYING file for each package, but I
> am looking if there's a single file that contains this information
> instead.
>=20

I started working on something like this as I'm currently not aware
that this functionality already exists (someone correct me if I'm
wrong). My goal was to create a PDF with a list of packets and all
licenses. The design I chose was creating something text based directly
out of yocto (markdown) and using something like pandoc to convert that
to a PDF. I've abandoned the project for the moment as other things
became more important.

This is what I have so far, it currently depends on python tabulate and
generally has some rough edges. I called it "credits.bbclass" and just
used "inherit credits" in my image task. If someone wants to continue
working on it, go for it.

CREDITS_DIR ??=3D "${DEPLOY_DIR}"
CREDITS_FILENAME ??=3D "credits.md"

python create_credit_file() {
    # bb.plain("Connect debugger now")
    # import epdb; epdb.serve()
    import re
    import oe.packagedata
    from oe.rootfs import image_list_installed_packages

    build_images_from_feeds =3D d.getVar('BUILD_IMAGES_FROM_FEEDS')
    if build_images_from_feeds =3D=3D "1":
        return 0

    # list of packages and their corresponding licenses
    license_summary =3D []
    # list of generic licenses
    generic_licenses =3D []
    # dictionary of packages and their license files
    license_details =3D {}
    # set of licenses to exclude
    exclude =3D set(d.getVar(('CREDITS_EXCLUDE_LICENSES') or "").split())

    for pkg in sorted(image_list_installed_packages(d)):
        # obtain and process basic information about the package
        pkg_info_path =3D os.path.join(d.getVar('PKGDATA_DIR'),
                                     'runtime-reverse', pkg)
        pkg_name =3D os.path.basename(os.readlink(pkg_info_path))
        pkg_data =3D oe.packagedata.read_pkgdatafile(pkg_info_path)
        if not "LICENSE" in pkg_data.keys():
            pkg_lic_name =3D "LICENSE_" + pkg_name
            pkg_data["LICENSE"] =3D pkg_data[pkg_lic_name]

        pkg_license_list =3D re.sub(r'[|&()*]', ' ', pkg_data["LICENSE"])
        pkg_license_list =3D re.sub(r'  *', ' ',
pkg_license_list).split()

        # skip package if one of it's licenses is in the exclude set
        if set(pkg_license_list).intersection(exclude):
            continue

        # create summary entry
        license_summary.append(( pkg_name, pkg_data["LICENSE"] ))

        # create generic and detail entries
        pkg_license_dir =3D os.path.join(d.getVar('LICENSE_DIRECTORY'),
                                       pkg_data["PN"])
        pkg_manifest_licenses =3D [canonical_license(d, lic) \
                                 for lic in pkg_license_list]
        licenses =3D os.listdir(pkg_license_dir)
        for lic in licenses:
            if re.match(r"^generic_.*$", lic):
                generic_lic =3D canonical_license(d,
                        re.search(r"^generic_(.*)$", lic).group(1))

                # ignore generic licenses that are not declared in
LICENSES
                if not re.sub(r'\+$', '', generic_lic) in \
                        [re.sub(r'\+', '', lic) for lic in \
                            pkg_manifest_licenses]:
                    continue

                if generic_lic not in generic_licenses:
                    generic_licenses.append(generic_lic)
            else:
                license_details.setdefault(pkg, []) \
                    .append(os.path.join(pkg_license_dir, lic))

    credit_file_dir =3D os.path.join(d.getVar('CREDITS_DIR'))
    bb.utils.mkdirhier(credit_file_dir)
    credit_file_path =3D os.path.join(credit_file_dir,
                                    d.getVar('CREDITS_FILENAME'))
    write_credit_file(d, credit_file_path, license_summary,
generic_licenses)
}

def write_credit_file(d, path, license_summary, generic_licenses):
    from tabulate import tabulate
    with open(path, "w") as credit_file:
        credit_file.write("# Summary\n\n")
        credit_file.write(tabulate(license_summary,
                                   headers=3D["Package", "License"],
                                   tablefmt=3D"github"))
        credit_file.write("\n\n")

        credit_file.write("# Generic Licenses\n\n")
        generic_directory =3D d.getVar('COMMON_LICENSE_DIR')
        for generic_license in generic_licenses:
            credit_file.write(f"## {generic_license}\n\n")
            generic_file_path =3D os.path.join(generic_directory,
generic_license)
            if os.path.isfile(generic_file_path):
                credit_file.write("```\n")
                with open(generic_file_path) as generic_file:
                    credit_file.write(generic_file.read())
                credit_file.write("```\n\n")
            else:
                bb.warn(f"Generic license not found:
{generic_file_path}")

ROOTFS_POSTPROCESS_COMMAND_append =3D "create_credit_file; "


> Thanks
>=20

